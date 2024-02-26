from openai import OpenAI


class OpenAIRequest:
    MODEL = 'gpt-3.5-turbo'
    client = OpenAI()

    @classmethod
    def request(cls, sys_msg, user_msg):
        completion = cls.client.chat.completions.create(
            model=cls.MODEL,
            messages=[
                {'role': 'system', 'content': sys_msg},
                {'role': 'user', 'content': user_msg},
            ],
        )

        choices = completion.choices
        message = choices[0].message
        text = message.content
        return text
