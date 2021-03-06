#!/usr/bin/env sh

./build/tools/ristretto quantize --model=models/SqueezeNet/train_val.prototxt \
	--weights=models/SqueezeNet/squeezenet_v1.0.caffemodel \
	--model_quantized=models/SqueezeNet/demo/quantized.prototxt \
	--trimming_mode=fixed_point --gpu=0 --iterations=2000
