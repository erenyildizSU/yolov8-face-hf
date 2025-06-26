
# YOLOv8 Face Detector 

This repository contains a deployed **YOLOv8-based face detection application** using [Ultralytics](https://github.com/ultralytics/ultralytics), [Gradio](https://gradio.app), and [Hugging Face Spaces](https://huggingface.co/spaces).

---

## Demo

👉 Try the live app: [Hugging Face Space](https://huggingface.co/spaces/eren-yildiz/yolov8-face-detector)

---

## Project Structure

```
📦 yolov8-face-detector
├── app.py             # Gradio app with detection and visualization
├── best.pt            # YOLOv8 trained weights
├── data.yaml          # Dataset config (class names)
├── requirements.txt   # Dependencies
```

---

## ⚙️ How to Run Locally

1. Install Docker or Python 3.10+
2. Clone this repo and install dependencies:
```bash
git clone https://github.com/<your-username>/yolov8-face-detector.git
cd yolov8-face-detector
pip install -r requirements.txt
```

3. Run the app:
```bash
python app.py
```

Then open `http://localhost:7860` in your browser.

---

## Model Info

- **Architecture**: YOLOv8 Nano (`yolov8n`)
- **Training Platform**: Google Colab
- **Dataset**: Single class (`face`)
- **Metrics**:
  - mAP@0.5: `94.8%`
  - mAP@0.5:0.95: `65.2%`

---

## Sample Output

| Input | Output |
|-------|--------|
| ![](assets/input.jpg) | ![](assets/output.jpg) |

---

## Author

Developed by [Eren Yıldız](https://huggingface.co/eren-yildiz)  
Part of an academic and experimental deep learning project.

---

## License

This project is open-sourced under the MIT License.
