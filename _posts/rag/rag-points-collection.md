# Notes
1. Diagram of query,controller, retriever, Generator 
2. What is RAG and what it does
3. Issues to consider
   - hallucinations : why possible can NLG model hallucinate
   - most models are pre-trained on a vast corpora of text (and other data )
   - You can ask a question whose answer not in the corpora itself
   - Despite that , the model can give a hallucinated answer
   - How to prevent hallucinations in RAG
     - https://machinelearningmastery.com/rag-hallucination-detection-techniques/
   - Challenges to Retrieval : inaccurate / irrelevant retrieved documents can lead to factually wrong or inconsistent results generation
   - How to resolve these challenges :  query expansion and disambiguation 
   - It is risky to assume that once relevant pieces of information are retrieved, that the pre-trained
   generation model will just coherently use the generated info to generate correct results, enhancing attention model besides hierarchical diffusion
   - RAG Fusion
     - https://www.emergentmind.com/topics/rag-fusion-model
     - https://www.emergentmind.com/topics/hierarchical-fusion-architectures 
   - Computational intensity:
     - Query embeddings
     - Embeddings for documents 
     - Generation 
     - Solution : Model Pruning , knowledge distillation 
   - RAG and Rerankers 
     - https://www.pinecone.io/learn/series/rag/rerankers/ 
     - Learning to Rank for Multiple Retrieval-Augmented Models through Iterative Utility Maximization
   - apply to one case study 
   - How RAG is evaluated
     - https://huggingface.co/learn/cookbook/en/rag_evaluation
   - Cross attention to make sure that most relevant pieces of information are emphasized during generation
     - https://www.geeksforgeeks.org/nlp/cross-attention-mechanism-in-transformers/
   
### Generation
- T5 https://www.geeksforgeeks.org/nlp/t5-text-to-text-transfer-transformer/
- BART https://www.geeksforgeeks.org/artificial-intelligence/bart-model-for-text-auto-completion-in-nlp/
- Integrate retriever and generation pipeline 
- https://arxiv.org/abs/2002.08909
### Improvements 
- semantic cache https://huggingface.co/learn/cookbook/en/semantic_cache_chroma_vector_database 
- FAISS https://medium.com/@yashpaliwal42/simple-rag-retrieval-augmented-generation-implementation-using-faiss-and-openai-2a74775b17c3 


   