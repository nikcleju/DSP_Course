---
title: |
       | Processing of 3D Signals
       | (Video Sequences)
subtitle: Lab 4, DSP
documentclass: scrartcl
fontsize: 12pt
---

# Objective

Students should understand and be able to operate with video data in Matlab

# Exercises

1. Load the `Lena` image (use `imread()`),
convert it to a grayscale image,
convert it to `double` type,
adapt the values to the $[0,1]$ range,
and to the and display it (use `imshow()`).

2. Create a video sequence by scrolling the Lena image 
circularly to the right, by $3$ pixels at every frame. 
Display the video at 25fps and save it to disk.

3. Create another video sequence by progressively changing the
average luminosity of the image from 0 to 1.
The video sequence should last exactly 4 seconds at 
a frame rate of 25fps.

4. Load the video file `veh.mp4`.
Convert each frame to grayscale, `double` type,
and range $[0,1]$. 
Display the video sequence.

5. **Background/foregound extraction**. 
Make a new video sequence as follows:

    output_frame = (1 - $\alpha$) * previous_output_frame + $\alpha$ * current_input_frame

    Set $\alpha \approx 1$. 

    a. Display the video sequence. What happened? What kind of filter is this?
    Rewrite the equation in the usual way (with $x[n]$ and $y[n]$)
    b. Create another video sequence as the difference between the original sequence
    and the sequence from a). Display the video sequence. What happens?
    Deduce the equation of this system. What kind of filter is this?


# Matlab snippets

1. Creating a video sequence in Matlab

    ```
    % Prepare data structure for a new video file in grayscale
    height = ...; % desired height
    width  = ...; % desired width
    NoF    = ...; % desired number of frames
    video = struct('cdata', zeros(height,width,1,'uint8'), ...
       'colormap',colormap(gray(256)));

    % Put each frame in the video data structure
    for i = 1:NoF   % how many frames we want
        video(i).cdata = ... se pune aici imaginea ...;
    end

    % Play the sequence
    implay(video);

    % Save the video to disk
    aviObj = VideoWriter('OutputVideo.avi', 'Uncompressed AVI');
    open(aviObj);
    for i = 1:numel(video)
       % Fix: ensure we don;t have any value larger than 1, it crashes Matlab
       video(i).cdata (video(i).cdata > 1) = 1;
       
       % Save to disk
       writeVideo(aviObj,ofmov(i).cdata);
    end
    close(aviObj);
    ```

1. Alternative way of creating a video sequence in Matlab

    ```
    height = ...; % desired height
    width  = ...; % desired width
    NoF    = ...; % desired number of frames
    % an array of size height x width x 1 x NoF:
    video  = zeros(height, width, 1, NoF);   
    for i = 1:NoF
        video(:,:,:,i) = ... the frame number i ... ;
    end

    % Play the sequence
    implay(video);

    % Fix: ensure we don't have any value larger than 1, it crashes Matlab
    video(video > 1) = 1;

    % Save file to disk
    aviObj = VideoWriter('OutputVideo.avi', 'Uncompressed AVI');
    aviObj.open();
    aviObj.writeVideo(video);
    aviobj.close();
```


1. Loading and processing frames from an existing video file

    ```
    v = VideoReader(['FisierVideo.avi']);
    height = v.Height;           % get height of the video frames
    width  = v.Width;            % get width of the video frames
    NoF    = v.NumberOfFrames;   % get total number of frames in the video

    % Process every frame in the video
    for i = 1:NoF
        frame = v.read(i);              % read frame number i
        ... do stuff ...
    end
    ```

# Final questions


1. TBD
