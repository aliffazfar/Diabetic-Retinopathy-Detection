<br />

<p align="center">
  <h1 align="center">Diabetic Retinopathy Detection</h1>

  <p align="center">
    Final Year Project 2022 for detecting Diabetic Retinopathy <br/>
    by using Gray-Level Co-Occurrence Matrix (GLCM)
    <br />
    </p>
</p>

<!-- ABOUT THE PROJECT -->

### About The Project

<img src="/READMEdocs/1466.gif"  width="850" height="auto" />

<br/>
<br/>

> This is my final year project for detecting diabetic retinopathy in person who has diabetes

**Features**

- [x] Masking, Grayscale, Histogram Equalization and Median Filtering
- [x] Gray-Level Co-Occurrence Matrix (GLCM) for features extraction
- [x] Support Vector Machine (SVM) for classification

**Training**

- The images of healthy eyes and eyes with diabetic retinopathy are retrieved from online database since there are many platforms that providing retina scan dataset.
- 242 datasets (Healthy eye & Diabetic Retinopathy images) are used for training phase.

**Testing**

- 30 separate datasets of retinal images from the training phase have been prepared for testing purposes and used to evaluate the accuracy of the detection.<br/>
- As a result, 15 images of diabetic retinopathy and 15 healthy retinal images will be used to test and evaluate the accuracy manually.

**Accuracy**

Classification Accuracy = $\frac{Corrrect Predictions}{Total Predictions}$ \* 100

| Correct Predictions | Total Predictions | Accuracy |
| :-----------------: | :---------------: | :------: |
|         27          |        30         |   90%    |
