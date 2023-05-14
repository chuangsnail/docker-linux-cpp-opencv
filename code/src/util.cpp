#include "util.h"

void showImage(const std::string& name) {
    
    cv::Mat image = cv::imread(name, cv::IMREAD_COLOR);
    if (image.empty())
    {
        std::cout << "Could not open or find the image" << std::endl;
        exit(0);
    }

    cv::namedWindow("Display window", cv::WINDOW_AUTOSIZE);
    cv::imshow("Display window", image);

    cv::waitKey(0);
}