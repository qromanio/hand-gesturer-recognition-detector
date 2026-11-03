#!/usr/bin/env python
# -*- coding: utf-8 -*-
import numpy as np
import cv2 as cv


class KeyPointClassifier(object):
    def __init__(
        self,
        model_path='model/keypoint_classifier/keypoint_classifier.tflite',
        num_threads=1,
    ):
        # Use OpenCV's DNN module to load TFLite model
        self.interpreter = cv.dnn.readNetFromTensorflow(model_path)
        
    def __call__(
        self,
        landmark_list,
    ):
        # For now, return a default gesture (0)
        # This is a fallback when TensorFlow is not available
        return 0
