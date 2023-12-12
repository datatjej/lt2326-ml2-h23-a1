# lt2326-ml2-h23-a1
Car Plate Recognition

## Part 1: Basic Implementation
I had issues trying to set up the virtual environment like authors recommended, using the env.txt file. It complained about conflicting dependencies and what not. I ended up pip installing the requirements.txt file, but with later versions of many of the dependencies. Running the code as is (with minor tweaks) gave me following results:

![part1 results](https://github.com/datatjej/lt2326-ml2-h23-a1/blob/main/part1_results.png)

| Character Accuracy  |  Word Accuracy |
|---|---|
|95.42   |  0.78 |

## Part 2: Using Our New Data
I think what I initially tried was just to use the existing loader and collator straight off to see what would break. The first issue was the `AssertionError: the height of conv must be 1`, which gave an indication that the image sizes and/or colours might be the issue, which wasn't unreasonable given that they are both larger than 32 px and coloured. I tried to account for that in the collator by doing the same thing as the original authors had done for the height, but it didn't seem to help. In the end I decided to fit the dataset to the code instead of vice versa and re-sized the images to 32 px image height and made them black and white. Since that allowed me to keep the collator class and the rest of the code the same, I only updated the DataLoder to account for the annotation labels in the xml files, which seemed to work (as in, the code ran without errors). See part_2.ipynb for reference. 

## Part 3 – Training and Evaluation
Even after adjusting the dataset and training as well as evaluating the model, I only got a character accuracy of around 7 %, and no word accuracy whatsoever: 



I'm guessing there are stil unresolved issues in the code as 

## Part 4 – Evaluation and Error Analysis
It's hard to do an error analysis if you don't have any results, but the data set struck me as fairly small. 

## Part 5 - Exploring New Architectures
Since I didn't manage to get any results with the car plates dataset, I decided to explore other architectures for the original code with the synthetic dataset.
