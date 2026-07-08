# 🎬 AI Video Assistant

An AI-powered Video & Meeting Assistant that can analyze YouTube videos or local audio/video files, generate professional meeting summaries, extract action items, identify key decisions, and let users chat with the meeting using Retrieval-Augmented Generation (RAG).

---

## ✨ Features

- 🎥 Analyze YouTube videos or local media files
- 🎙️ Automatic Speech-to-Text transcription
- 🌐 English and Hinglish support
- 📝 AI-generated meeting title
- 📋 Professional meeting summary
- ✅ Extract action items
- 🔑 Extract key decisions
- ❓ Identify unanswered questions
- 💬 Chat with the meeting transcript using RAG
- ⚡ Beautiful Streamlit UI
- 🧠 ChromaDB Vector Store for semantic search

---

## 🛠 Tech Stack

### Frontend
- Streamlit

### AI Models
- Whisper (OpenAI)
- Mistral AI
- Sarvam AI (for Hinglish)

### Frameworks
- LangChain
- HuggingFace Embeddings
- ChromaDB

### Audio Processing
- yt-dlp
- FFmpeg
- pydub

### Programming Language
- Python 3.11+

---

## 📂 Project Structure

```
AI-Video-Assistant/
│
├── app.py                 # Streamlit UI
├── main.py                # CLI entry point
├── requirements.txt
│
├── core/
│   ├── transcriber.py
│   ├── summarizer.py
│   ├── extractor.py
│   ├── rag_engine.py
│   └── vector_store.py
│
├── utils/
│   └── audio_processor.py
│
├── downloaded/
├── vector_db/
└── README.md
```

---

## ⚙️ Installation

### Clone the repository

```bash
git clone https://github.com/yourusername/AI-Video-Assistant.git

cd AI-Video-Assistant
```

---

### Create Virtual Environment

Windows

```bash
python -m venv .venv
```

Activate

```bash
.venv\Scripts\activate
```

---

### Install dependencies

```bash
pip install -r requirements.txt
```

---

### Install FFmpeg

Download FFmpeg

https://ffmpeg.org/download.html

Add FFmpeg to your system PATH.

Verify installation

```bash
ffmpeg -version
```

---

## 🔑 Environment Variables

Create a `.env` file in the root directory.

```env
MISTRAL_API_KEY=your_mistral_api_key

SARVAM_API_KEY=your_sarvam_api_key

WHISPER_MODEL=small
```

> Whisper runs locally, while Mistral and Sarvam require API keys.

---

## 🚀 Running the Application

### Streamlit UI

```bash
streamlit run app.py
```

Open

```
http://localhost:8501
```

---

### Command Line Version

```bash
python main.py
```

---

## 🎯 Supported Inputs

- YouTube URL

```
https://www.youtube.com/watch?v=...
```

- Local video

```
video.mp4
```

- Local audio

```
meeting.wav
meeting.mp3
```

---

## 🔄 Workflow

```
Input Video
      │
      ▼
Extract Audio
      │
      ▼
Chunk Audio
      │
      ▼
Transcription
(Whisper / Sarvam)
      │
      ▼
Generate Title
      │
      ▼
Meeting Summary
      │
      ▼
Extract
• Action Items
• Decisions
• Questions
      │
      ▼
Create Embeddings
      │
      ▼
Store in ChromaDB
      │
      ▼
RAG Chat Assistant
```

---

## 💬 Chat with Meeting

After analysis, users can ask questions like:

- What were the key decisions?
- What tasks were assigned?
- Who is responsible for deployment?
- What is the project deadline?
- Summarize the entire meeting.
- What questions remain unanswered?

The assistant answers strictly from the meeting transcript using Retrieval-Augmented Generation (RAG).

---

## 📸 UI

The application includes

- Modern dark-themed Streamlit interface
- Live processing status
- Expandable transcript viewer
- AI-generated meeting summary
- Action items
- Key decisions
- Open questions
- Interactive chat interface

---

## 📦 Major Libraries

- Streamlit
- Whisper
- LangChain
- ChromaDB
- HuggingFace Embeddings
- Mistral AI
- Sarvam AI
- yt-dlp
- pydub
- FFmpeg

---

## 🔮 Future Improvements

- Speaker Diarization
- PDF Report Export
- DOCX Export
- Meeting Timeline
- Multi-language Translation
- Cloud Deployment
- Authentication
- Meeting History
- Docker Support
- AWS Deployment

---

## 🤝 Contributing

Contributions are welcome!

1. Fork the repository
2. Create a new feature branch
3. Commit your changes
4. Push to your branch
5. Open a Pull Request

---

## 📜 License

This project is licensed under the MIT License.

---

## 👨‍💻 Author

**Suman Sumeet**

GitHub:
https://github.com/SumanSumeet

LinkedIn:
https://www.linkedin.com/in/suman-sumeet-62b903324/

---

⭐ If you found this project useful, please consider giving it a star!