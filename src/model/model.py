from transformers import QuestionAnsweringPipeline, pipeline


class Model:
    def __init__(self) -> None:
        self.qa_pipeline = pipeline("question-answering")
    def get_results(self, context : str, question: str) -> str:
        result = self.qa_pipeline(question=question, context=context)
        return result['answer']
