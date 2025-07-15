# export_bert.py
# this script helps fetch bert-onnx model online
from transformers import BertModel, BertTokenizer
import torch

model_name = "bert-base-uncased"
tokenizer  = BertTokenizer.from_pretrained(model_name)
model      = BertModel.from_pretrained(model_name).eval()

# Dummy input
inputs = tokenizer("The quick brown fox jumps over the lazy dog",
                   return_tensors="pt")

# Export to ONNX
torch.onnx.export(
    model,
    (inputs["input_ids"], inputs["attention_mask"]),
    "bert-base-uncased.onnx",
    input_names=["input_ids", "attention_mask"],
    output_names=["last_hidden_state", "pooler_output"],
    dynamic_axes={
        "input_ids":      {0: "batch", 1: "seq"},
        "attention_mask": {0: "batch", 1: "seq"},
        "last_hidden_state": {0: "batch", 1: "seq"}
    },
    opset_version=14 # need version>=14 to support aten::scaled_dot_product_attention operator
)
