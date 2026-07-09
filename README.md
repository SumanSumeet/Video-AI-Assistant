# 🎬 AI Video Assistant

> **An AI-powered Meeting Intelligence Assistant that transcribes YouTube videos or uploaded audio/video files, generates professional meeting summaries, extracts action items, identifies key decisions, and enables semantic Q&A using Retrieval-Augmented Generation (RAG).**

---

## 🚀 Live Demo

👉 **Hugging Face Space**

https://huggingface.co/spaces/<your-username>/<space-name>

---

## ✨ Features

- 🎥 Analyze YouTube videos
- 📁 Upload local audio/video files
- 🎙️ Automatic Speech-to-Text transcription
- 🌐 English & Hinglish support
- 📝 AI-generated meeting title
- 📋 Professional meeting summary
- ✅ Extract action items
- 🔑 Extract key decisions
- ❓ Identify unanswered questions
- 💬 Chat with meeting transcripts using RAG
- ⚡ Beautiful Streamlit UI
- 🧠 ChromaDB Vector Database
- 🐳 Docker-ready deployment
- 🤗 Deployable on Hugging Face Spaces

---

# 🏗️ Architecture

```
                YouTube / Local File
                         │
                         ▼
                Audio Processing
                         │
                         ▼
                  Whisper / Sarvam
                  Transcription
                         │
                         ▼
                Mistral AI Processing
                         │
      ┌──────────────────┼──────────────────┐
      ▼                  ▼                  ▼
 Meeting Summary    Action Items     Key Decisions
      │
      ▼
 Generate Embeddings
      │
      ▼
     ChromaDB
      │
      ▼
     RAG Chat Assistant
```

---

# 🛠 Tech Stack

### Frontend

- Streamlit

### AI Models

- OpenAI Whisper
- Mistral AI
- Sarvam AI

### LLM Framework

- LangChain
- LangChain LCEL

### Vector Database

- ChromaDB

### Embeddings

- HuggingFace Sentence Transformers

### Audio Processing

- yt-dlp
- FFmpeg
- pydub

### Language

- Python 3.11

---

# 📂 Project Structure

```
Video-AI-Assistant/
│
├── app.py
├── main.py
├── requirements.txt
├── packages.txt
├── Dockerfile
├── .dockerignore
├── README.md
│
├── core/
│   ├── extractor.py
│   ├── rag_engine.py
│   ├── summarizer.py
│   ├── transcriber.py
│   └── vector_store.py
│
├── utils/
│   └── audio_processor.py
│
├── assets/
└── vector_db/
```

---

# ⚙️ Running Locally

## Clone Repository

```bash
git clone https://github.com/SumanSumeet/Video-AI-Assistant.git

cd Video-AI-Assistant
```

## Create Virtual Environment

```bash
python -m venv .venv
```

Windows

```bash
.venv\Scripts\activate
```

Linux/macOS

```bash
source .venv/bin/activate
```

---

## Install Dependencies

```bash
pip install -r requirements.txt
```

---

## Install FFmpeg

Download

https://ffmpeg.org/download.html

Verify installation

```bash
ffmpeg -version
```

---

# 🔑 Environment Variables

Create a `.env` file.

```env
MISTRAL_API_KEY=your_api_key

SARVAM_API_KEY=your_api_key

WHISPER_MODEL=small
```

---

# ▶️ Run the Application

```bash
streamlit run app.py
```

Open

```
http://localhost:8501
```

---

# 🐳 Docker Deployment

This project is fully Dockerized and can be deployed directly to **Hugging Face Docker Spaces**.

## Build Docker Image

```bash
docker build -t ai-video-assistant .
```

## Run Docker Container

```bash
docker run -p 7860:7860 ai-video-assistant
```

Open

```
http://localhost:7860
```

---

# 🤗 Deploy on Hugging Face Spaces

1. Create a **Docker Space**
2. Connect your GitHub repository
3. Add the following Secrets

| Variable | Description |
|------------|------------|
| MISTRAL_API_KEY | Mistral API Key |
| SARVAM_API_KEY | Sarvam API Key |
| WHISPER_MODEL | Whisper model (small/base) |

Every push to the GitHub repository automatically redeploys the Space.

---

# 📥 Supported Inputs

### YouTube URL

```
https://www.youtube.com/watch?v=...
```

### Audio

```
meeting.mp3
meeting.wav
meeting.m4a
```

### Video

```
meeting.mp4
meeting.mov
meeting.avi
```

---

# 💬 Chat with the Meeting

Ask natural language questions such as:

- What decisions were made?
- Who is responsible for deployment?
- What action items remain?
- Summarize the meeting.
- What questions are still open?

The assistant answers strictly using Retrieval-Augmented Generation (RAG) over the meeting transcript.

---

# 📸 UI Preview

Features include

- 🌙 Modern Dark Theme
- 🎯 Live Pipeline Status
- 📝 Transcript Viewer
- 📋 Meeting Summary
- ✅ Action Items
- 🔑 Key Decisions
- ❓ Open Questions
- 💬 Interactive RAG Chat

---

# 🔮 Future Improvements

- Speaker Diarization
- PDF Export
- DOCX Export
- Meeting Timeline
- Multi-language Translation
- User Authentication
- Meeting History
- AWS Deployment
- GPU Inference
- Streaming Transcription

---

# 🤝 Contributing

Contributions are welcome.

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push your branch
5. Open a Pull Request

---

# 👨‍💻 Author

**Suman Sumeet**

GitHub

https://github.com/SumanSumeet

LinkedIn

https://www.linkedin.com/in/suman-sumeet-62b903324/

---

⭐ If you found this project useful, consider giving it a star!