# Deployment considerations

Below are my pure speculations that are strictly required to accurately measure using 

## Scalability: how fast can you scale the model deployment to handle a large volume of incoming tickets

I would run it throught the following product:
https://github.com/allegroai/clearml-serving

Since all instances can run independently some load balancing setup would help to organize distributed inference.

## Latency

Current latency as measured in evaluation notebook: 
- 300ms/sentence in average for Collab CPU mode
- 190ms/sentense in average for Collab T4 GPU

Since Collab doesn't provide advanced hardware in free tier I expect it could be reduced to 100ms or less with several tricks like:
- using distilled versions of Bert and RoBerta
- quantization
- optimized inference using Nvidia Triton server 
- or something Bert specific which I haven't explored in this homework   

## Model updates: what process would you use to handle updates

Since I already suggested ClearML - it has it's own model versioning. Otherwise I personally like Weights&Biases, but it's a paid solution. Also I'm totally fine to use cloud storage buckets with DVC or hand-crafted lightweight solution.

## Cost: what is expected the cost / million tokens (1 token = ~3.75 characters on average)

Really hard to estimate unless it's calculated with final hrdware costs that cover required latency. Could be a big separate task.

## CPU vs GPU considerations

CPU with memory-focused VMs is fine for the cold start since it's cheaper at the beginning. Though depending on latency requirements and the amount of requests which may cover 10x cost for GPU instances comparing to some CPU VMs.  