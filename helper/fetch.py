import torch
from transformers import BertModel, BertTokenizer
from torch_mlir import fx

# 1) Load BERT & tokenizer
model = BertModel.from_pretrained("bert-base-uncased").eval()
tokenizer = BertTokenizer.from_pretrained("bert-base-uncased")

# 2) Prepare example inputs
inputs = tokenizer("hello torch-mlir", return_tensors="pt")
input_ids = inputs["input_ids"]
attention_mask = inputs["attention_mask"]

# 3) Wrap model so forward returns last_hidden_state
class BertWrapper(torch.nn.Module):
    def __init__(self, model):
        super().__init__()
        self.model = model
    def forward(self, input_ids, attention_mask):
        return self.model(
            input_ids=input_ids,
            attention_mask=attention_mask
        ).last_hidden_state

wrapped = BertWrapper(model).eval()

# 4) Export via fx.export_and_import with two positional args
mlir_module = fx.export_and_import(
    wrapped,
    input_ids,
    attention_mask,
    output_type="linalg-on-tensors",
    func_name="BertWrapper",
)

# 5) Dump to .mlir
with open("bert_linalg.mlir", "w") as f:
    f.write(str(mlir_module))
print("✅ Saved MLIR to 'bert_linalg.mlir'")
