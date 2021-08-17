classdef GUI3_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                     matlab.ui.Figure
        TabGroup                     matlab.ui.container.TabGroup
        DataAcquisitionTab           matlab.ui.container.Tab
        RefreshButton                matlab.ui.control.Button
        StartButton                  matlab.ui.control.Button
        AcquisitionModeButtonGroup   matlab.ui.container.ButtonGroup
        ContinuousButton             matlab.ui.control.RadioButton
        SetSamplesButton             matlab.ui.control.RadioButton
        SamplesSpinner               matlab.ui.control.Spinner
        SampleRateHzEditFieldLabel   matlab.ui.control.Label
        SampleRateHzEditField        matlab.ui.control.NumericEditField
        Slider                       matlab.ui.control.Slider
        Image                        matlab.ui.control.Image
        DataCaptureViewTabAccelerometer  matlab.ui.container.TabGroup
        GraphViewTab                 matlab.ui.container.Tab
        TabGroupRTP                  matlab.ui.container.TabGroup
        AccelerometersTab            matlab.ui.container.Tab
        UIAxesRTP                    matlab.ui.control.UIAxes
        TabGroupRTP_imu              matlab.ui.container.TabGroup
        AccelerometerTab_imu         matlab.ui.container.Tab
        UIAxesRTP_imuA               matlab.ui.control.UIAxes
        GyroscopeTab_imu             matlab.ui.container.Tab
        UIAxesRTP_imuG               matlab.ui.control.UIAxes
        MagnetometerTab_imu          matlab.ui.container.Tab
        UIAxesRTP_imuM               matlab.ui.control.UIAxes
        TableViewTab                 matlab.ui.container.Tab
        TablesTab                    matlab.ui.container.TabGroup
        Acceleromter1Tab             matlab.ui.container.Tab
        UITable                      matlab.ui.control.Table
        Acceleromter2Tab             matlab.ui.container.Tab
        UITable_2                    matlab.ui.control.Table
        TablesTab_imu                matlab.ui.container.TabGroup
        AccelerationNTab_2           matlab.ui.container.Tab
        UITable_imuA                 matlab.ui.control.Table
        AngularVelocitydegsTab       matlab.ui.container.Tab
        UITable_imuG                 matlab.ui.control.Table
        MagneticFieldIntensitymGTab  matlab.ui.container.Tab
        UITable_imuM                 matlab.ui.control.Table
        StopButton                   matlab.ui.control.Button
        ClearButton                  matlab.ui.control.Button
        ResetButton                  matlab.ui.control.Button
        SerialMonitorTextArea        matlab.ui.control.TextArea
        SerialMonitorLabel           matlab.ui.control.CheckBox
        x1CheckBoxRTP                matlab.ui.control.CheckBox
        y1CheckBoxRTP                matlab.ui.control.CheckBox
        z1CheckBoxRTP                matlab.ui.control.CheckBox
        z2CheckBoxRTP                matlab.ui.control.CheckBox
        y2CheckBoxRTP                matlab.ui.control.CheckBox
        x2CheckBoxRTP                matlab.ui.control.CheckBox
        Accelerometer1Label_4        matlab.ui.control.Label
        Accelerometer2Label_2        matlab.ui.control.Label
        PortListDropDownLabel        matlab.ui.control.Label
        PortListDropDown             matlab.ui.control.DropDown
        DevicesDropDownLabel         matlab.ui.control.Label
        DevicesDropDown              matlab.ui.control.DropDown
        TableViewLabel               matlab.ui.control.Label
        KamalGamirShahin2020Label    matlab.ui.control.Label
        AnalysisStatisticsTab        matlab.ui.container.Tab
        ResetButton_2                matlab.ui.control.Button
        StatisticsTab                matlab.ui.container.TabGroup
        MaximaTab                    matlab.ui.container.Tab
        xEditFieldLabel              matlab.ui.control.Label
        xEditField                   matlab.ui.control.EditField
        yEditFieldLabel              matlab.ui.control.Label
        yEditField                   matlab.ui.control.EditField
        zEditField_10Label           matlab.ui.control.Label
        zEditField_10                matlab.ui.control.EditField
        zEditFieldLabel              matlab.ui.control.Label
        zEditField                   matlab.ui.control.EditField
        yEditField_2Label            matlab.ui.control.Label
        yEditField_2                 matlab.ui.control.EditField
        xEditField_3Label            matlab.ui.control.Label
        xEditField_3                 matlab.ui.control.EditField
        AccelerationN1Label          matlab.ui.control.Label
        AccelerationN2Label          matlab.ui.control.Label
        AveragesTab                  matlab.ui.container.Tab
        xEditField_9Label            matlab.ui.control.Label
        Avgx1EditField               matlab.ui.control.EditField
        yEditField_7Label            matlab.ui.control.Label
        Avgy1EditField               matlab.ui.control.EditField
        zLabel_2                     matlab.ui.control.Label
        Avgz1EditField               matlab.ui.control.EditField
        AccelerationN1Label_2        matlab.ui.control.Label
        zEditField_5Label            matlab.ui.control.Label
        Avgz2EditField               matlab.ui.control.EditField
        yEditField_8Label            matlab.ui.control.Label
        Avgy2EditField               matlab.ui.control.EditField
        xEditField_11Label           matlab.ui.control.Label
        Avgx2EditField               matlab.ui.control.EditField
        AccelerationN2Label_2        matlab.ui.control.Label
        AnalysisTab                  matlab.ui.container.TabGroup
        TimeDomainTab                matlab.ui.container.Tab
        TabGroupAnalysisTime         matlab.ui.container.TabGroup
        AccelerometryTimeTab         matlab.ui.container.Tab
        UIAxesFP                     matlab.ui.control.UIAxes
        TabGroupAnalysisTime_imu     matlab.ui.container.TabGroup
        AccelerometryTimeTab_2       matlab.ui.container.Tab
        UIAxesFP_imuA                matlab.ui.control.UIAxes
        AccelerometryTimeTab_3       matlab.ui.container.Tab
        UIAxesFP_imuG                matlab.ui.control.UIAxes
        AccelerometryTimeTab_4       matlab.ui.container.Tab
        UIAxesFP_imuM                matlab.ui.control.UIAxes
        FrequencyDomainTab           matlab.ui.container.Tab
        FrequencyAnalysis            matlab.ui.container.TabGroup
        AccelerometerTab_5           matlab.ui.container.Tab
        UIAxesFFT                    matlab.ui.control.UIAxes
        FrequencyAnalysis_imu        matlab.ui.container.TabGroup
        AccelerometerTab             matlab.ui.container.Tab
        UIAxesFFT_imuA               matlab.ui.control.UIAxes
        GyroscopeTab_2               matlab.ui.container.Tab
        UIAxesFFT_imuG               matlab.ui.control.UIAxes
        MagnetometerTab_2            matlab.ui.container.Tab
        UIAxesFFT_imuM               matlab.ui.control.UIAxes
        StartButton_2                matlab.ui.control.Button
        StopButton_2                 matlab.ui.control.Button
        AnalysisPlotLabel            matlab.ui.control.Label
        KamalGamirShahin2020Label_2  matlab.ui.control.Label
        Image_2                      matlab.ui.control.Image
        StatisticsTab_imu            matlab.ui.container.TabGroup
        MaximaTab_imu                matlab.ui.container.Tab
        xEditField_13Label           matlab.ui.control.Label
        xEditField_imuA              matlab.ui.control.EditField
        yEditField_10Label           matlab.ui.control.Label
        yEditField_imuA              matlab.ui.control.EditField
        zLabel                       matlab.ui.control.Label
        zEditField_imuA              matlab.ui.control.EditField
        AccelerationNLabel_2         matlab.ui.control.Label
        zEditField_7Label            matlab.ui.control.Label
        zEditField_imuG              matlab.ui.control.EditField
        yEditField_11Label           matlab.ui.control.Label
        yEditField_imuG              matlab.ui.control.EditField
        xEditField_15Label           matlab.ui.control.Label
        xEditField_imuG              matlab.ui.control.EditField
        AngularVelocitydegsLabel_2   matlab.ui.control.Label
        zEditField_8Label            matlab.ui.control.Label
        zEditField_imuM              matlab.ui.control.EditField
        yEditField_12Label           matlab.ui.control.Label
        yEditField_imuM              matlab.ui.control.EditField
        xEditField_16Label           matlab.ui.control.Label
        xEditField_imuM              matlab.ui.control.EditField
        MFieldIntensitymGLabel_2     matlab.ui.control.Label
        AveragesTab_imu              matlab.ui.container.Tab
        xEditField_9Label_2          matlab.ui.control.Label
        Avgx1EditField_imu           matlab.ui.control.EditField
        yEditField_7Label_2          matlab.ui.control.Label
        Avgy1EditField_imu           matlab.ui.control.EditField
        zLabel_3                     matlab.ui.control.Label
        Avgz1EditField_imu           matlab.ui.control.EditField
        AccelerationNLabel           matlab.ui.control.Label
        zEditField_5Label_2          matlab.ui.control.Label
        Avgz2EditField_imu           matlab.ui.control.EditField
        yEditField_8Label_2          matlab.ui.control.Label
        Avgy2EditField_imu           matlab.ui.control.EditField
        xEditField_11Label_2         matlab.ui.control.Label
        Avgx2EditField_imu           matlab.ui.control.EditField
        AngularVelocitydegsLabel     matlab.ui.control.Label
        zEditField_9Label            matlab.ui.control.Label
        Avgz3EditField_imu           matlab.ui.control.EditField
        yEditField_13Label           matlab.ui.control.Label
        Avgy3EditField_imu           matlab.ui.control.EditField
        xEditField_17Label           matlab.ui.control.Label
        Avgx3EditField_imu           matlab.ui.control.EditField
        MFieldIntensitymGLabel       matlab.ui.control.Label
        x1CheckBox                   matlab.ui.control.CheckBox
        y1CheckBox                   matlab.ui.control.CheckBox
        z1CheckBox                   matlab.ui.control.CheckBox
        x2CheckBox                   matlab.ui.control.CheckBox
        y2CheckBox                   matlab.ui.control.CheckBox
        z2CheckBox                   matlab.ui.control.CheckBox
        Accelerometer1Label_5        matlab.ui.control.Label
        Accelerometer2Label_4        matlab.ui.control.Label
    end

     properties (Access = private)
        %% Initialisation variables
        DataAcquisition % Timer object
        monitorspeed % Serial monitor speed
        freeports % List of available COM ports detected
        port % Selected port
        Serial % Object for serial port
        device % Object to hold string of what device is connected
        bluetooth % Boolean for whether operating in bluetooth mode or not
        SerialBTOut % Object for output bluetooth serial port
        SerialBTIn % Object for input bluetooth serial port
        monitor % Hold the serial monitor output here
        samplerate % Hold sample rate value
        
        %% Booleans & Conditionals
        running % Bool for whether data acquisition is currently running or not
        showserialmonitor % bool to hold whether to show the serial monitor or not
        mode % integer to hold what data acquisition mode being used
        
        %% String and input handling variables
        inputstring % String holding the current input fromt the serial port
        stringarray % An array of strings converted from inputstring
        csvnum % The csv string array converted to an array of numbers
        
        acc1 % Vector containing accelerometer 1 values (parsed from csvnum)
        acc2 % Vector containing accelerometer 2 values (parsed from csvnum)
        
        imuA % Vector containing IMU acceleration values (parsed from csvnum)
        imuG % Vector containing IMU gyroscope values (parsed from csvnum)
        imuM % Vector containing IMU magnetometer values (parsed from csvnum)
        
        accmatrix1 % Matrix to hold all accerometer 1 values obtained during data acquisition
        accmatrix2 % Matrix to hold all accerometer 2 values obtained during data acquisition
        imumatrixA % Matrix to hold all IMU acceleration values obtained during data acquisition
        imumatrixG % Matrix to hold all IMU gyroscope values obtained during data acquisition
        imumatrixM % Matrix to hold all IMU magnetometer values obtained during data acquisition
        
        acc1row % Current row of accelerometer 1 data (to be added to table and matrix)
        acc2row % Current row of accelerometer 2 data (to be added to table and matrix)
        acc1table % Table object holding the data for accelerometer 1's table
        acc2table % Table object holding the data for accelerometer 2's table
        
        imurowA % Current row of IMU accelerometer data (to be added to table and matrix)
        imurowG % Current row of IMU gyroscope data (to be added to table and matrix)
        imurowM % Current row of IMU magnetometer data (to be added to table and matrix)
        imutableA % Table object holding the data for the IMU table
        imutableG % Table object holding the data for the IMU table
        imutableM % Table object holding the data for the IMU table
        iterator % Integer holding the iteration number (= sample/loop number)
        
        timeelapsed % The time elapsed since the start of DAQ
        
        %% Statistics variables
        max1 % Array for holding the max values = [x1 y1 z1] or [imuAx imuAy imuAz]
        max2 % Array for holding the max values = [x2 y2 z2] or [imuGx imuGy imuGz]
        max3 % Array for holding max values = only for [imuMx imuMy imuMz]
        
        average1 % Array for holing the average values of accelerometer 1 = [x1 y1 z1]
        average2 % Array for holing the average values of accelerometer 2 = [x2 y2 z2]
        average3 % Array for averaging third column
        
        %% Plot Lines
        % Real Time Plot
        PlotLineRTP1x % Line Object
        PlotLineRTP1y % Line Object
        PlotLineRTP1z % Line Object
        PlotLineRTP2x % Line Object
        PlotLineRTP2y % Line Object
        PlotLineRTP2z % Line Object
        PlotLineRTP3x % Line Object (used in IMU mode)
        PlotLineRTP3y % Line Object (used in IMU mode)
        PlotLineRTP3z % Line Object (used in IMU mode)
        
        % Real Time Plot (IMU Mode)
        PlotLineRTP_imuAx % Line Object
        PlotLineRTP_imuAy % Line Object
        PlotLineRTP_imuAz % Line Object
        PlotLineRTP_imuGx % Line Object
        PlotLineRTP_imuGy % Line Object
        PlotLineRTP_imuGz % Line Object
        PlotLineRTP_imuMx % Line Object
        PlotLineRTP_imuMy % Line Object
        PlotLineRTP_imuMz % Line Object
        
        
        % Full Plot
        PlotLineFP1x % Line Object
        PlotLineFP1y % Line Object
        PlotLineFP1z % Line Object
        PlotLineFP2x % Line Object
        PlotLineFP2y % Line Object
        PlotLineFP2z % Line Object
        PlotLineFP3x % Line Object (used in IMU mode)
        PlotLineFP3y % Line Object (used in IMU mode)
        PlotLineFP3z % Line Object (used in IMU mode)
        
        
        % Fourier Transform Plot
        PlotLineFFT1x % Line Object
        PlotLineFFT1y % Line Object
        PlotLineFFT1z % Line Object
        PlotLineFFT2x % Line Object
        PlotLineFFT2y % Line Object
        PlotLineFFT2z % Line Object
        PlotLineFFT3x % Line Object (used in IMU mode)
        PlotLineFFT3y % Line Object (used in IMU mode)
        PlotLineFFT3z % Line Object (used in IMU mode)
        
        %% Fourier Transform objects
        f % Frequency axis of the FFT plot
        P1 % Single sided spectrum of |X(f)|
    end
    
    methods (Access = private)
        %%
        function  initialise(app)
            app.monitorspeed = 2000000; % Set the serial monitor speed
            app.initports % Initialise and connect to the serial port
            app.showserialmonitor.Value = false; % Hide the serial monitor
            
            app.mode = 1; % Set acquisition mode to 1 (continuous)
            app.running = false; % Initialise app running boolean to false
            app.Slider.Value = app.SampleRateHzEditField.Value; % Set the sample rate field
            app.ContinuousButton.Value = true; % Initialise with acquisition mode in the continuous setting
            app.SamplesSpinner.Enable = false; % ...so disable the spinner for sample number
            app.resetlayout;
            app.max1 = [0 0 0]; % Reset max values
            app.max2 = [0 0 0]; % Reset max values
            app.max3 = [0 0 0]; % Reset max values
            
            app.turnonRTPcheckboxes; % Turn on the real time plot checkboxes
            app.disableFPcheckboxes; % Disable the full plot checkboxes
            app.createRTP % Creates the real time plot
        end
        
        function initports(app)
            % Initialise the ports
            app.StartButton.Enable = false; % Prevent starting
            app.StartButton_2.Enable = false; % Prevent starting
            app.Serial = {}; % Clear any already created serial objects
            app.SerialBTIn = {};
            app.SerialBTOut = {};
            
            app.freeports = {}; % Clear the list of freeports
            app.freeports = serialportlist("available"); % get the available ports
            
            if isempty(app.freeports) == true % If no ports are available
                app.PortListDropDown.Items = "None"; % Show none in the drop down list
                
                
            else
                app.PortListDropDown.Items = app.freeports; % Populate drop down list
                app.StartButton.Text = "Initialising..."; % Change button text
                app.StartButton_2.Text = "Initialising..."; % Change button text
                
                if app.PortListDropDown.Value == "COM3" % Wired connection via USB
                    app.Serial = serialport(app.PortListDropDown.Value,app.monitorspeed, "Timeout", 30); % Open serial port
                    pause(2); % Give enough time for hardware to initialise and the serial port to clear
                    flush(app.Serial) % Flush the serial port so we only get csv data (get rid of any previous output)
                    
                    app.StartButton.Text = "Start"; % Change button text to start
                    app.StartButton.Enable = true; % Enable the button
                    app.StartButton_2.Text = "Start"; % Change button text to start
                    app.StartButton_2.Enable = true; % Enable the button
                end
                
                %% COM4 INPUT FROM DEVICE
                %% COM5 OUTPUT TO DEVICE
                if app.PortListDropDown.Value == "COM4" || app.PortListDropDown.Value == "COM5"
                    % On my PC, the two bluetooth ports are created when
                    % connected to the device via bluetooth, one for
                    % output, one for input. Thus if statement ensures that
                    % the right ports are used for both, preventing
                    % crashes.
                    
                    app.bluetooth = true;
                    app.SerialBTIn = serialport("COM4",app.monitorspeed, "Timeout", 30); % Open serial port
                    app.SerialBTOut = serialport("COM5",app.monitorspeed, "Timeout", 30); % Open serial port
                    pause(5); % Give enough time for hardware to initialise and the serial port to clear
                    flush(app.SerialBTIn) % Flush the serial port so we only get csv data (get rid of any previous output)
                    
                    app.StartButton.Text = "Start"; % Change button text to start
                    app.StartButton.Enable = true; % Enable the button
                    app.StartButton_2.Text = "Start"; % Change button text to start
                    app.StartButton_2.Enable = true; % Enable the button
                end
            end
        end
        
        function string2csv(app)
            %% Converts the input string from the MCU into an array of csv
            if app.device == "2 Accelerometers" % there are 6 comma separated variables
                app.stringarray = sprintf('%s,', app.inputstring{:}); % Convert the full csv string into an array of csv
                app.csvnum = sscanf(app.stringarray, '%g,', [6, 1]).'; % Convert array of csv strings into numerical array
            end
            if app.device == "1 IMU" % there are 9 comma separated variables
                app.stringarray = sprintf('%s,', app.inputstring{:}); % Convert the full csv string into an array of csv
                app.csvnum = sscanf(app.stringarray, '%g,', [9, 1]).'; % Convert array of csv strings into numerical array
            end
        end
        
        function csv2matrix(app)
            if app.device == "2 Accelerometers"
                app.acc1 = app.csvnum(:,1:3); % Accelerometer 1 vector is first 3 numbers of numerical array
                app.acc2 = app.csvnum(:,4:6); % Accelerometer 2 vector is last 3 numbers of numerical array
                app.acc1row = [app.acc1 app.timeelapsed app.iterator]; % Append the row with the elapsed time and the iteration number
                app.acc2row = [app.acc2 app.timeelapsed app.iterator];  % Append the row with the elapsed time and the iteration number
                
                app.accmatrix1 = [app.accmatrix1; app.acc1row]; % Append the row to the bottom of the matrix
                app.accmatrix2 = [app.accmatrix2; app.acc2row]; % Append the row to the bottom of the matrix
            end
            
            if app.device == "1 IMU"
                app.imuA = app.csvnum(:,1:3); % IMU acceleration vector is first 3 numbers of numerical array
                app.imuG = app.csvnum(:,4:6); % IMU gyroscope vector is middle 3 numbers of numerical array
                app.imuM = app.csvnum(:,7:9); % IMU magnetometer vector is last 3 numbers of numerical array
                app.imurowA = [app.imuA app.timeelapsed app.iterator]; % Add the time elapsed and the iteration number to the array
                app.imurowG = [app.imuG app.timeelapsed app.iterator]; % Add the time elapsed and the iteration number to the array
                app.imurowM = [app.imuM app.timeelapsed app.iterator]; % Add the time elapsed and the iteration number to the array
                
                app.imumatrixA = [app.imumatrixA; app.imurowA]; % Append the row to the bottom of the matrix
                app.imumatrixG = [app.imumatrixG; app.imurowG]; % Append the row to the bottom of the matrix
                app.imumatrixM = [app.imumatrixM; app.imurowM]; % Append the row to the bottom of the matrix
            end
            app.calculatemax % Calculate the maximum sensor values and update if new maximum
        end
        
        function matrix2table(app)
            %% Convert the data matrices into table objects
            % Subtract the start time from the entire time column to
            % convert to total time elapsed since start
            if app.device == "2 Accelerometers"
                app.accmatrix1(:,4) = app.accmatrix1(:,4) - app.accmatrix1(1,4); % Subtract the initial time from entire
                app.accmatrix2(:,4) = app.accmatrix2(:,4) - app.accmatrix2(1,4); %...row column to get time elapsed since start
                app.acc1table = array2table(app.accmatrix1); % Convert the matrix to a table
                app.acc2table = array2table(app.accmatrix2); % Convert the matrix to a table
            end
            if app.device == "1 IMU"
                % Convert the time row to time elapsed from start by subtracting the first value
                app.imumatrixA(:,4) = app.imumatrixA(:,4) - app.imumatrixA(1,4); % Subtract the initial time from entire
                app.imumatrixG(:,4) = app.imumatrixG(:,4) - app.imumatrixG(1,4); %...row column to get time elapsed since start
                app.imumatrixM(:,4) = app.imumatrixM(:,4) - app.imumatrixM(1,4);
                
                app.imutableA = array2table(app.imumatrixA); % Convert the matrix to a table
                app.imutableG = array2table(app.imumatrixG); % Convert the matrix to a table
                app.imutableM = array2table(app.imumatrixM); % Convert the matrix to a table
            end
        end
        
        function updateserialmonitor(app)
            %% Update the serial monitor with the raw serial input
            %% Used for debugging ony and can slow down data acquisition
            %% Only do if tick box is checked
            if app.showserialmonitor.Value == true
                app.monitor = vertcat(app.monitor,app.inputstring); % Concatenate string vertically for serial monitor
                app.SerialMonitorTextArea.Value = app.monitor; % Update the monitor
            end
        end
        
        function StartDataAcquisition(app,~,~)
            app.iterator = app.iterator + 1; % Increment the iteration number by 1
            
            if app.bluetooth == true
                write(app.SerialBTOut,1,"uint8") % write something to the serial port to trigger read
                app.inputstring = readline(app.SerialBTIn); % get the data from the serial port
            else
                write(app.Serial,1,"uint8") % write something to the serial port to trigger read
                app.inputstring = readline(app.Serial); % get the data from the serial port
            end
            
            app.timeelapsed = toc; % Set time elapsed since tic (when start button pushed)
            app.string2csv % Convert the csv string input into an array of numbers
            app.csv2matrix % Create and append a matrix containing all input values
            app.plotRTP % Update the real time plot
            app.updateserialmonitor % Update the serial monitor
            % (If tick box ticked, set by internal conditions)
        end
        
        function StopDataAcquisition(app,~,~)
            enableconfig(app); % Re-enable config options when done
            matrix2table(app); % Convert the matrix of data into a table
            
            if app.device == "2 Accelerometers"
                app.UITable.Data = [app.acc1table]; % Populate Accelerometer 1 table
                app.UITable_2.Data = [app.acc2table]; % Populate Accelerometer 2 table
            end
            if app.device == "1 IMU"
                app.UITable_imuA.Data = [app.imutableA]; % Populate imu acceleration table
                app.UITable_imuG.Data = [app.imutableG]; % Populate imu angular v table
                app.UITable_imuM.Data = [app.imutableM]; % Populate imu mag field intensity table
            end
        end
        
        function enableconfig(app) % While not running, enable all the config fields
            app.DevicesDropDown.Enable = true;
            app.StopButton.Enable = false; % Except stop buttons
            app.StopButton_2.Enable = false; % Except stop buttons
            app.RefreshButton.Enable = true;
            app.StartButton.Text = "Start";
            app.StartButton.Enable = true;
            app.StartButton_2.Text = "Start";
            app.StartButton_2.Enable = true;
            app.PortListDropDown.Enable = true;
            app.ContinuousButton.Enable = true;
            app.SetSamplesButton.Enable = true;
            app.SampleRateHzEditField.Enable = true;
            app.Slider.Enable = true;
            
            if app.mode == 2 % If in set samples mode
                app.SamplesSpinner.Enable = true; % Enable the set samples spinner
            end
        end
        
        function disableconfig(app)
            app.DevicesDropDown.Enable = false;
            %% While running, disable all the config fields
            app.RefreshButton.Enable = false;
            app.PortListDropDown.Enable = false;
            app.ContinuousButton.Enable = false;
            app.SetSamplesButton.Enable = false;
            app.SamplesSpinner.Enable = false;
            app.SampleRateHzEditField.Enable = false;
            app.Slider.Enable = false;
            app.disableFPcheckboxes;
        end
        
        function resetvariables(app)
            app.iterator = 0; % Reset iterator
            app.acc1 = {}; % Reset the accelerometer 1 values vector
            app.acc2 = {}; % Reset the accelerometer 2 values vector
            app.imuA = {}; % Reset IMU variables
            app.imuG = {}; % Reset IMU variables
            app.imuM = {}; % Reset IMU variables
            app.accmatrix1 = []; % Clear the accelerometer 1 data matrix
            app.accmatrix2 = []; % Clear the accelerometer 2 data matrix
            app.imumatrixA = []; % Clear the IMU acceleration data matrix
            app.imumatrixM = []; % Clear the IMU acceleration data matrix
            app.imumatrixG = []; % Clear the IMU acceleration data matrix
            
            app.acc1row = {}; % Reset the accelerometer 1 table row vector
            app.acc2row = {}; % Reset the accelerometer 2 table row vector
            app.imurowA = {}; % Reset the imu acceleration table row vector
            app.imurowG = {}; % Reset the imu acceleration table row vector
            app.imurowM = {}; % Reset the imu acceleration table row vector
            
            app.acc1table = {}; % Reset the table data buffer
            app.acc2table = {}; % Reset the table data buffer
            app.imutableA = {}; % Reset the table data buffer
            app.imutableG = {}; % Reset the table data buffer
            app.imutableM = {}; % Reset the table data buffer
            set(app.UITable, 'Data', {});  % Clear the table
            set(app.UITable_2, 'Data', {}); % Clear the table
            set(app.UITable_imuA, 'Data', {}) % Clear the table
            set(app.UITable_imuG, 'Data', {}) % Clear the table
            set(app.UITable_imuM, 'Data', {}) % Clear the table
            
            app.max1 = [0 0 0]; % Reset max values
            app.max2 = [0 0 0]; % Reset max values
            app.max3 = [0 0 0]; % Reset max values (for IMU)
            
            app.SerialMonitorTextArea.Value = ''; % Clear the serial monitor buffer
            app.monitor = {}; % Reset the serial monitor object
            set(app.SerialMonitorTextArea, 'Value', {''}); % Clear serial monitor
            
            % Clear the full time domain plots
            app.UIAxesFP.cla;
            app.UIAxesFP_imuA.cla;
            app.UIAxesFP_imuG.cla;
            app.UIAxesFP_imuM.cla;
            % Clear the FFT plots
            app.UIAxesFFT.cla;
            app.UIAxesFFT_imuA.cla;
            app.UIAxesFFT_imuG.cla;
            app.UIAxesFFT_imuM.cla;
            
            app.SamplesSpinner.Enable = false; % Disable the set samples spinner
            app.disableFPcheckboxes % Disable full plot tick boxes
            
            
            %% Reset all fields
            app.xEditField.Value = "0"; % Reset max fields
            app.yEditField.Value = "0";
            app.zEditField_10.Value = "0";
            app.xEditField_3.Value = "0";
            app.yEditField_2.Value = "0";
            app.zEditField.Value = "0";
            
            %% Reset all fields
            app.xEditField_imuA.Value = "0"; % Reset max fields
            app.yEditField_imuA.Value = "0";
            app.zEditField_imuA.Value = "0";
            app.xEditField_imuG.Value = "0";
            app.yEditField_imuG.Value = "0";
            app.zEditField_imuG.Value = "0";
            app.xEditField_imuM.Value = "0";
            app.yEditField_imuM.Value = "0";
            app.zEditField_imuM.Value = "0";
            
            app.Avgx1EditField.Value = "N/A"; % Reset average fields
            app.Avgy1EditField.Value = "N/A";
            app.Avgz1EditField.Value = "N/A";
            app.Avgx2EditField.Value = "N/A";
            app.Avgy2EditField.Value = "N/A";
            app.Avgz2EditField.Value = "N/A";
            
            app.Avgx1EditField_imu.Value = "N/A"; % Reset average fields
            app.Avgy1EditField_imu.Value = "N/A";
            app.Avgz1EditField_imu.Value = "N/A";
            app.Avgx2EditField_imu.Value = "N/A";
            app.Avgy2EditField_imu.Value = "N/A";
            app.Avgz2EditField_imu.Value = "N/A";
            app.Avgx3EditField_imu.Value = "N/A";
            app.Avgy3EditField_imu.Value = "N/A";
            app.Avgz3EditField_imu.Value = "N/A";
        end
        
        function disableFPcheckboxes(app)
            %% Disables all full plot checkboxes, preventing
            %% configuration whilst running
            app.x1CheckBox.Enable = false;
            app.z2CheckBox.Enable = false;
            app.y1CheckBox.Enable = false;
            app.y2CheckBox.Enable = false;
            app.z1CheckBox.Enable = false;
            app.x2CheckBox.Enable = false;
        end
        
        function enableFPcheckboxes(app)
            %% Disables all full plot checkboxes, allowing
            %% configuration while not running
            app.x1CheckBox.Enable = true;
            app.z2CheckBox.Enable = true;
            app.y1CheckBox.Enable = true;
            app.y2CheckBox.Enable = true;
            app.z1CheckBox.Enable = true;
            app.x2CheckBox.Enable = true;
        end
        
        function turnonRTPcheckboxes(app)
            %% Turns on the real time plot check boxes so all axes show
            app.x1CheckBoxRTP.Value = true;
            app.x2CheckBoxRTP.Value = true;
            app.y1CheckBoxRTP.Value = true;
            app.y2CheckBoxRTP.Value = true;
            app.z1CheckBoxRTP.Value = true;
            app.z2CheckBoxRTP.Value = true;
        end
        
        function updateAll(app,~,~)
            %% Called after a read has finished, updates all fields and
            %% creates plots
            app.running = false; % Set running boolean to false
            app.StopDataAcquisition;% Ends data acquisition
            app.calculateaverages % Get the averages
            
            app.TabGroup.Visible = true; % Makes the data table visible
            app.AnalysisPlotLabel.Visible = false; % Hides the plot "running" label visible
            app.TableViewLabel.Visible = false; % Hides the data table "running" label visible
            
            app.plotFP; % Plot the full time domain plot
            app.plotFFT; % Plot the fourier transform of the time domain plot
        end
        function createRTP(app)
            %% Create empty lines for real time plot
            %% This function utilises code adapted from a standard MATLAB tutuorial
            %% https://uk.mathworks.com/help/matlab/creating_guis/memory-monitor-gui-in-app-designer.html
            if app.device == "2 Accelerometers"
                app.UIAxesRTP.XLim = [0 60]; % Set x axis limit
                app.UIAxesRTP.XDir = 'reverse'; % Set plot direction
                app.UIAxesRTP.YLim = [-20 20]; % Accelerometer sensitivity is 2g,
                % so abs(max input) = 2*9.81, 20 is sufficient room
                
                hold(app.UIAxesRTP, "off") % Take off hold so plot resets when called
                app.PlotLineRTP1x = plot(app.UIAxesRTP,0:60,zeros(1,61)); % Start Plot all zeroes
                hold(app.UIAxesRTP, "on") % Turn on hold for joint plot
                app.PlotLineRTP1y = plot(app.UIAxesRTP,0:60,zeros(1,61)); % Start Plot all zeroes
                app.PlotLineRTP1z = plot(app.UIAxesRTP,0:60,zeros(1,61)); % Start Plot all zeroes
                app.PlotLineRTP2x = plot(app.UIAxesRTP,0:60,zeros(1,61)); % Start Plot all zeroes
                app.PlotLineRTP2y = plot(app.UIAxesRTP,0:60,zeros(1,61)); % Start Plot all zeroes
                app.PlotLineRTP2z = plot(app.UIAxesRTP,0:60,zeros(1,61)); % Start Plot all zeroes
                
                legend(app.UIAxesRTP, "x","y","z","x","y","z") % Configure legend
            end
            
            if app.device == "1 IMU"
                app.UIAxesRTP_imuA.XLim = [0 60]; % Set x axis limit
                app.UIAxesRTP_imuA.XDir = 'reverse'; % Set plot direction
                app.UIAxesRTP_imuA.YLim = [-20 20]; % Accelerometer sensitivity is 2g,
                
                app.UIAxesRTP_imuG.XLim = [0 60]; % Set x axis limit
                app.UIAxesRTP_imuG.XDir = 'reverse'; % Set plot direction
                
                app.UIAxesRTP_imuM.XLim = [0 60]; % Set x axis limit
                app.UIAxesRTP_imuM.XDir = 'reverse'; % Set plot direction
                
                hold(app.UIAxesRTP_imuA, "off") % Take off hold so plot resets when called
                app.PlotLineRTP1x = plot(app.UIAxesRTP_imuA,0:60,zeros(1,61)); % Start Plot all zeroes
                hold(app.UIAxesRTP_imuA, "on") % Turn on hold for joint plot
                app.PlotLineRTP1y = plot(app.UIAxesRTP_imuA,0:60,zeros(1,61)); % Start Plot all zeroes
                app.PlotLineRTP1z = plot(app.UIAxesRTP_imuA,0:60,zeros(1,61)); % Start Plot all zeroes
                legend(app.UIAxesRTP_imuA, "x","y","z") % Configure legend
                
                hold(app.UIAxesRTP_imuG, "off") % Take off hold so plot resets when called
                app.PlotLineRTP2x = plot(app.UIAxesRTP_imuG,0:60,zeros(1,61)); % Start Plot all zeroes
                hold(app.UIAxesRTP_imuG, "on") % Turn on hold for joint plot
                app.PlotLineRTP2y = plot(app.UIAxesRTP_imuG,0:60,zeros(1,61)); % Start Plot all zeroes
                app.PlotLineRTP2z = plot(app.UIAxesRTP_imuG,0:60,zeros(1,61)); % Start Plot all zeroes
                legend(app.UIAxesRTP_imuG, "x","y","z") % Configure legend
                
                hold(app.UIAxesRTP_imuM, "off") % Take off hold so plot resets when called
                app.PlotLineRTP3x = plot(app.UIAxesRTP_imuM,0:60,zeros(1,61)); % Start Plot all zeroes
                hold(app.UIAxesRTP_imuM, "on") % Turn on hold for joint plot
                app.PlotLineRTP3y = plot(app.UIAxesRTP_imuM,0:60,zeros(1,61)); % Start Plot all zeroes
                app.PlotLineRTP3z = plot(app.UIAxesRTP_imuM,0:60,zeros(1,61)); % Start Plot all zeroes
                legend(app.UIAxesRTP_imuM, "x","y","z") % Configure legend
            end
        end
        
        function plotRTP(app)
            %% Plot the acceleration data in real time to the real time plot
            if app.device == "2 Accelerometers"
                app.plotRTP_accelerometer; % Plot accelerometer real time
            end
            
            if app.device == "1 IMU"
                app.plotRTP_imu; % Plot IMU real time
            end
        end
        
        function plotRTP_accelerometer(app)
            plotval = app.PlotLineRTP1x.YData; % Get the current plot line object
            plotval = circshift(plotval,1); % Shift the plot by 1 to make a moving graph
            plotval(1) = app.acc1(1); % Set the first value of the plot line to the incoming data
            app.PlotLineRTP1x.YData = plotval; % Plot the updated data
            
            %% Do the same for the 5 other plot lines
            plotval = app.PlotLineRTP1y.YData;
            plotval = circshift(plotval,1);
            plotval(1) = app.acc1(2);
            app.PlotLineRTP1y.YData = plotval;
            
            plotval = app.PlotLineRTP1z.YData;
            plotval = circshift(plotval,1);
            plotval(1) = app.acc1(3);
            app.PlotLineRTP1z.YData = plotval;
            
            plotval = app.PlotLineRTP2x.YData;
            plotval = circshift(plotval,1);
            plotval(1) = app.acc2(1);
            app.PlotLineRTP2x.YData = plotval;
            
            plotval= app.PlotLineRTP2y.YData;
            plotval= circshift(plotval,1);
            plotval(1) = app.acc2(2);
            app.PlotLineRTP2y.YData = plotval;
            
            plotval = app.PlotLineRTP2z.YData;
            plotval = circshift(plotval,1);
            plotval(1) = app.acc2(3);
            app.PlotLineRTP2z.YData = plotval;
        end
        
        function plotRTP_imu(app)
            %% As the real time plot is resource heavy and can slow down
            %% data acquisition, the conditions in this function only plot
            %% the RTP if the corresponding tab is selected, saving CPU
            
            if app.TabGroupRTP_imu.SelectedTab == app.AccelerometerTab_imu
                plotval = app.PlotLineRTP1x.YData; % Get the current plot line object
                plotval = circshift(plotval,1); % Shift the plot by 1 to make a moving graph
                plotval(1) = app.imuA(1); % Set the first value of the plot line to the incoming data
                app.PlotLineRTP1x.YData = plotval; % Plot the updated data
                
                %% Do the same for the other plot lines
                plotval = app.PlotLineRTP1y.YData;
                plotval = circshift(plotval,1);
                plotval(1) = app.imuA(2);
                app.PlotLineRTP1y.YData = plotval;
                
                plotval = app.PlotLineRTP1z.YData;
                plotval = circshift(plotval,1);
                plotval(1) = app.imuA(3);
                app.PlotLineRTP1z.YData = plotval;
            end
            
            if app.TabGroupRTP_imu.SelectedTab == app.GyroscopeTab_imu
                plotval = app.PlotLineRTP2x.YData;
                plotval = circshift(plotval,1);
                plotval(1) = app.imuG(1);
                app.PlotLineRTP2x.YData = plotval;
                
                plotval= app.PlotLineRTP2y.YData;
                plotval= circshift(plotval,1);
                plotval(1) = app.imuG(2);
                app.PlotLineRTP2y.YData = plotval;
                
                plotval = app.PlotLineRTP2z.YData;
                plotval = circshift(plotval,1);
                plotval(1) = app.imuG(3);
                app.PlotLineRTP2z.YData = plotval;
            end
            
            if app.TabGroupRTP_imu.SelectedTab == app.MagnetometerTab_imu
                plotval = app.PlotLineRTP3x.YData;
                plotval = circshift(plotval,1);
                plotval(1) = app.imuM(1);
                app.PlotLineRTP3x.YData = plotval;
                
                plotval= app.PlotLineRTP3y.YData;
                plotval= circshift(plotval,1);
                plotval(1) = app.imuM(2);
                app.PlotLineRTP3y.YData = plotval;
                
                plotval = app.PlotLineRTP3z.YData;
                plotval = circshift(plotval,1);
                plotval(1) = app.imuM(3);
                app.PlotLineRTP3z.YData = plotval;
            end
        end
        
        function plotFP(app)
            %% Plots the full accelerometry or IMU data obtained during data acquisition
            %% Instead of normal plots, plot lines are used so individual plots'
            %% visibilities can be toggled
            if app.device == "2 Accelerometers"
                app.plotFP_accelerometer;
            end
            
            if app.device == "1 IMU"
                app.plotFP_imu;
            end
        end
        
        function plotFP_accelerometer(app)
            %% Creates the full data acquisition plot when in accelerometer mode
            app.PlotLineFP1x = plot(app.UIAxesFP,app.accmatrix1(:,4),app.accmatrix1(:,1));
            % Set the plot line, x axis = time elapsed, y axis = data
            hold(app.UIAxesFP, 'on') % Turn hold on so all plots on same graph
            app.PlotLineFP1y = plot(app.UIAxesFP,app.accmatrix1(:,4),app.accmatrix1(:,2));
            app.PlotLineFP1z = plot(app.UIAxesFP,app.accmatrix1(:,4),app.accmatrix1(:,3));
            
            app.PlotLineFP2x = plot(app.UIAxesFP,app.accmatrix1(:,4),app.accmatrix2(:,1));
            app.PlotLineFP2y = plot(app.UIAxesFP,app.accmatrix1(:,4),app.accmatrix2(:,2));
            app.PlotLineFP2z = plot(app.UIAxesFP,app.accmatrix1(:,4),app.accmatrix2(:,3));
            
            legend(app.UIAxesFP,'x1','y1','z1','x2','y2','z2'); % Configure legend
            hold(app.UIAxesFP, 'off') % Turn off hold so next iteration starts again
            app.enableFPcheckboxes; % Enable the full plot check boxes
        end
        
        function plotFP_imu(app)
            app.PlotLineFP1x = plot(app.UIAxesFP_imuA,app.imumatrixA(:,4),app.imumatrixA(:,1));
            % Set the plot line, x axis = time elapsed, y axis = data
            hold(app.UIAxesFP_imuA, 'on') % Turn hold on so all plots on same graph
            app.PlotLineFP1y = plot(app.UIAxesFP_imuA,app.imumatrixA(:,4),app.imumatrixA(:,2));
            app.PlotLineFP1z = plot(app.UIAxesFP_imuA,app.imumatrixA(:,4),app.imumatrixA(:,3));
            hold(app.UIAxesFP_imuA, 'off') % Turn hold on so all plots on same graph
            legend(app.UIAxesFP_imuA,'x','y','z');
            
            app.PlotLineFP2x = plot(app.UIAxesFP_imuG,app.imumatrixG(:,4),app.imumatrixG(:,1));
            % Set the plot line, x axis = time elapsed, y axis = data
            hold(app.UIAxesFP_imuG, 'on') % Turn hold on so all plots on same graph
            app.PlotLineFP2y = plot(app.UIAxesFP_imuG,app.imumatrixG(:,4),app.imumatrixG(:,2));
            app.PlotLineFP2z = plot(app.UIAxesFP_imuG,app.imumatrixG(:,4),app.imumatrixG(:,3));
            hold(app.UIAxesFP_imuG, 'off') % Turn hold on so all plots on same graph
            legend(app.UIAxesFP_imuG,'x','y','z');
            
            app.PlotLineFP3x = plot(app.UIAxesFP_imuM,app.imumatrixM(:,4),app.imumatrixM(:,1));
            % Set the plot line, x axis = time elapsed, y axis = data
            hold(app.UIAxesFP_imuM, 'on') % Turn hold on so all plots on same graph
            app.PlotLineFP3y = plot(app.UIAxesFP_imuM,app.imumatrixM(:,4),app.imumatrixM(:,2));
            app.PlotLineFP3z = plot(app.UIAxesFP_imuM,app.imumatrixM(:,4),app.imumatrixM(:,3));
            hold(app.UIAxesFP_imuM, 'off') % Turn hold on so all plots on same graph
            legend(app.UIAxesFP_imuM,'x','y','z');
            
            app.enableFPcheckboxes; % Enable the full plot check boxes
        end
        
        
        function computeFFT(app,timedomain)
            %% This function utilises code adapted from a standard MATLAB guide
            %% https://uk.mathworks.com/help/matlab/ref/fft.html
            
            SampleNumber = app.iterator; % The number of samples = the iterator value
            if app.device == "2 Accelerometers"
                Ts = app.accmatrix1(end,4)/SampleNumber; % Duration of acquisition/sample number
            end
            
            if app.device == "1 IMU"
                Ts = app.imumatrixA(end,4)/SampleNumber; % Duration of acquisition/sample number
            end
            Fs = 1/Ts; % Sampling frequency
            app.f = Fs*(0:(SampleNumber/2))/SampleNumber; % Set the frequecy vector
            
            Y = fft(timedomain); % Compute the fourier transform of the input signal
            P2 = abs(Y/SampleNumber); % Compute 2-sided spectrum
            app.P1 = P2(1:SampleNumber/2+1); % Compute single-sided spectrum
            app.P1(2:end-1) = 2*app.P1(2:end-1); % Compute single-sided spectrum
            app.P1 = mag2db(abs(app.P1)); % Convert magnitude to dB
            
        end
        
        function plotFFT(app)
            %% This function plots the FFT of the time domain accelerometry signal
            %% It utilises plotlines as it allows each plot's visibility to be
            %% toggled on and off.
            
            if app.device == "2 Accelerometers"
                app.plotFFT_accelerometer;
            end
            
            if app.device == "1 IMU"
                app.plotFFT_imu;
            end
        end
        
        function plotFFT_accelerometer(app)
            app.computeFFT(app.accmatrix1(:,1)) % Compute the FFT acceleromter 1 x axis
            app.PlotLineFFT1x = plot(app.UIAxesFFT,app.f,app.P1); % Plot it
            hold(app.UIAxesFFT, "on");
            app.computeFFT(app.accmatrix1(:,2))
            app.PlotLineFFT1y = plot(app.UIAxesFFT,app.f,app.P1);
            app.computeFFT(app.accmatrix1(:,3))
            app.PlotLineFFT1z = plot(app.UIAxesFFT,app.f,app.P1);
            app.computeFFT(app.accmatrix2(:,1))
            app.PlotLineFFT2x = plot(app.UIAxesFFT,app.f,app.P1);
            app.computeFFT(app.accmatrix2(:,2))
            app.PlotLineFFT2y = plot(app.UIAxesFFT,app.f,app.P1);
            app.computeFFT(app.accmatrix2(:,3))
            app.PlotLineFFT2z = plot(app.UIAxesFFT,app.f,app.P1);
            
            hold(app.UIAxesFFT, "off"); % Turn off hold so new plot will override
            legend(app.UIAxesFFT,'x1','y1','z1','x2','y2','z2'); % Set legend
        end
        
        function plotFFT_imu(app)
            app.computeFFT(app.imumatrixA(:,1)) % Compute the FFT IMU acceleration x axis
            app.PlotLineFFT1x = plot(app.UIAxesFFT_imuA,app.f,app.P1); % Plot it
            hold(app.UIAxesFFT_imuA, "on"); % Ensure all plots are on the same figure
            app.computeFFT(app.imumatrixA(:,2))
            app.PlotLineFFT1y = plot(app.UIAxesFFT_imuA,app.f,app.P1);
            app.computeFFT(app.imumatrixA(:,3))
            app.PlotLineFFT1z = plot(app.UIAxesFFT_imuA,app.f,app.P1);
            hold(app.UIAxesFFT_imuA, "off"); % Take off hold so next DAQ overrides
            legend(app.UIAxesFFT_imuA, 'x','y','z');
            
            % And same again for the gyroscope and magnetometer values
            app.computeFFT(app.imumatrixG(:,1)) % Compute the FFT IMU acceleration x axis
            app.PlotLineFFT2x = plot(app.UIAxesFFT_imuG,app.f,app.P1); % Plot it
            hold(app.UIAxesFFT_imuG, "on");
            app.computeFFT(app.imumatrixG(:,2))
            app.PlotLineFFT2y = plot(app.UIAxesFFT_imuG,app.f,app.P1);
            app.computeFFT(app.imumatrixG(:,3))
            app.PlotLineFFT2z = plot(app.UIAxesFFT_imuG,app.f,app.P1);
            hold(app.UIAxesFFT_imuM, "off");
            legend(app.UIAxesFFT_imuM, 'x','y','z');
            
            app.computeFFT(app.imumatrixM(:,1)) % Compute the FFT IMU acceleration x axis
            app.PlotLineFFT3x = plot(app.UIAxesFFT_imuM,app.f,app.P1); % Plot it
            hold(app.UIAxesFFT_imuM, "on");
            app.computeFFT(app.imumatrixM(:,2))
            app.PlotLineFFT3y = plot(app.UIAxesFFT_imuM,app.f,app.P1);
            app.computeFFT(app.imumatrixM(:,3))
            app.PlotLineFFT3z = plot(app.UIAxesFFT_imuM,app.f,app.P1);
            hold(app.UIAxesFFT_imuM, "off");
            legend(app.UIAxesFFT_imuM, 'x','y','z');
            
        end
        
        function calculatemax(app)
            %% Function updates the max acceleration statistics based on
            %% the data input
            if app.device == "2 Accelerometers"
                if abs(app.acc1(1)) > abs(app.max1(1)) % If accelerometer 1 (x) is greater than current max
                    app.max1(1) = abs(app.acc1(1)); % Update
                    app.xEditField.Value = num2str(app.max1(1)); % Set field
                    
                end
                
                if abs(app.acc1(2)) > abs(app.max1(2)) % If accelerometer 1 (y) is greater than current max
                    app.max1(2) = abs(app.acc1(2)); % Update
                    app.yEditField.Value = num2str(app.max1(2)); % Set field
                end
                
                if abs(app.acc1(3)) > abs(app.max1(3)) % If accelerometer 1 (z) is greater than current max
                    app.max1(3) = abs(app.acc1(3)); % Update
                    app.zEditField_10.Value = num2str(app.max1(3)); % Set field
                end
                
                if abs(app.acc2(1)) > abs(app.max2(1)) % If accelerometer 2 (x) is greater than current max
                    app.max2(1) = abs(app.acc2(1)); % Update
                    app.xEditField_3.Value = num2str(app.max2(1)); % Set field
                end
                
                if abs(app.acc2(2)) > abs(app.max2(2)) % If accelerometer 2 (y) is greater than current max
                    app.max2(2) = abs(app.acc2(2)); % Update
                    app.yEditField_2.Value = num2str(app.max2(2)); % Set field
                end
                
                if abs(app.acc2(3)) > abs(app.max2(3)) % If accelerometer 2 (z) is greater than current max
                    app.max2(3) = abs(app.acc2(3)); % Update
                    app.zEditField.Value = num2str(app.max2(3)); % Set field
                end
            end
            
            if app.device == "1 IMU"
                
                if abs(app.imuA(1)) > abs(app.max1(1)) % If accelerometer 1 (x) is greater than current max
                    app.max1(1) = abs(app.imuA(1)); % Update
                    app.xEditField_imuA.Value = num2str(app.max1(1)); % Set field
                end
                
                if abs(app.imuA(2)) > abs(app.max1(2)) % If accelerometer 1 (y) is greater than current max
                    app.max1(2) = abs(app.imuA(2)); % Update
                    app.yEditField_imuA.Value = num2str(app.max1(2)); % Set field
                end
                
                if abs(app.imuA(3)) > abs(app.max1(3)) % If accelerometer 1 (z) is greater than current max
                    app.max1(3) = abs(app.imuA(3)); % Update
                    app.zEditField_imuA.Value = num2str(app.max1(3)); % Set field
                end
                
                if abs(app.imuG(1)) > abs(app.max2(1)) % If accelerometer 2 (x) is greater than current max
                    app.max2(1) = abs(app.imuG(1)); % Update
                    app.xEditField_imuG.Value = num2str(app.max2(1)); % Set field
                end
                
                if abs(app.imuG(2)) > abs(app.max2(2)) % If accelerometer 2 (y) is greater than current max
                    app.max2(2) = abs(app.imuG(2)); % Update
                    app.yEditField_imuG.Value = num2str(app.max2(2)); % Set field
                end
                
                if abs(app.imuG(3)) > abs(app.max2(3)) % If accelerometer 2 (z) is greater than current max
                    app.max2(3) = abs(app.imuG(3)); % Update
                    app.zEditField_imuG.Value = num2str(app.max2(3)); % Set field
                end
                
                if abs(app.imuM(1)) > abs(app.max3(1)) % If accelerometer 2 (x) is greater than current max
                    app.max3(1) = abs(app.imuM(1)); % Update
                    app.xEditField_imuM.Value = num2str(app.max3(1)); % Set field
                end
                
                if abs(app.imuM(2)) > abs(app.max3(2)) % If accelerometer 2 (y) is greater than current max
                    app.max3(2) = abs(app.imuM(2)); % Update
                    app.yEditField_imuM.Value = num2str(app.max3(2)); % Set field
                end
                
                if abs(app.imuM(3)) > abs(app.max3(3)) % If accelerometer 2 (z) is greater than current max
                    app.max3(3) = abs(app.imuM(3)); % Update
                    app.zEditField_imuM.Value = num2str(app.max3(3)); % Set field
                end
            end
        end
        
        function calculateaverages(app)
            %% Calculates the average accelerations in each axis
            if app.device == "2 Accelerometers"
                app.average1 = mean(app.accmatrix1); % Get vector of the mean of each column (Accelerometer 1)
                app.average2 = mean(app.accmatrix2); % Get vector of the mean of each column (Accelerometer 2)
                
                app.Avgx1EditField.Value = num2str(app.average1(1)); % Set the text field
                app.Avgy1EditField.Value = num2str(app.average1(2)); % Set the text field
                app.Avgz1EditField.Value = num2str(app.average1(3)); % Set the text field
                
                app.Avgx2EditField.Value = num2str(app.average2(1)); % Set the text field
                app.Avgy2EditField.Value = num2str(app.average2(2)); % Set the text field
                app.Avgz2EditField.Value = num2str(app.average2(3)); % Set the text field
            end
            
            if app.device == "1 IMU"
                app.average1 = mean(app.imumatrixA); % Get vector of the mean of each column (Accelerometer 1)
                app.average2 = mean(app.imumatrixG); % Get vector of the mean of each column (Accelerometer 2)
                app.average3 = mean(app.imumatrixM); % Get vector of the mean of each column (Accelerometer 2)
                
                app.Avgx1EditField_imu.Value = num2str(app.average1(1)); % Set the text field
                app.Avgy1EditField_imu.Value = num2str(app.average1(2)); % Set the text field
                app.Avgz1EditField_imu.Value = num2str(app.average1(3)); % Set the text field
                
                app.Avgx2EditField_imu.Value = num2str(app.average2(1)); % Set the text field
                app.Avgy2EditField_imu.Value = num2str(app.average2(2)); % Set the text field
                app.Avgz2EditField_imu.Value = num2str(app.average2(3)); % Set the text field
                
                app.Avgx3EditField_imu.Value = num2str(app.average3(1)); % Set the text field
                app.Avgy3EditField_imu.Value = num2str(app.average3(2)); % Set the text field
                app.Avgz3EditField_imu.Value = num2str(app.average3(3)); % Set the text field
            end
        end
        
        function resetlayout(app)
            %% Resets the layout of the GUI, depending on which device mode is selected
            if app.device == "2 Accelerometers"
                app.FrequencyAnalysis.Visible = true;
                app.FrequencyAnalysis_imu.Visible = false;
                app.StatisticsTab.Visible = true;
                app.StatisticsTab_imu.Visible = false;
                app.TabGroupAnalysisTime.Visible = true;
                app.TabGroupAnalysisTime_imu.Visible = false;
                
                %% Un-hide all of the real time plot checkboxes
                app.x1CheckBoxRTP.Visible = true;
                app.y1CheckBoxRTP.Visible = true;
                app.z1CheckBoxRTP.Visible = true;
                app.x2CheckBoxRTP.Visible = true;
                app.y2CheckBoxRTP.Visible = true;
                app.z2CheckBoxRTP.Visible = true;
                
                %% Unhide the hidden full plot check boxes
                app.x2CheckBox.Visible = true;
                app.y2CheckBox.Visible = true;
                app.z2CheckBox.Visible = true;
                
                app.Accelerometer1Label_5.Text = "Accelerometer 1";
                app.Accelerometer1Label_4.Visible = true;
                app.Accelerometer2Label_2.Text = "Acceleromter 2";
                app.Accelerometer2Label_4.Visible = true;
                
                % Toggle the visibility of each mode's tab groups
                app.TablesTab.Visible = true;
                app.TablesTab_imu.Visible = false;
                app.TabGroupRTP.Visible = true;
                app.TabGroupRTP_imu.Visible = false;
            end
            
            if app.device == "1 IMU"
                app.FrequencyAnalysis.Visible = false;
                app.FrequencyAnalysis_imu.Visible = true;
                app.StatisticsTab.Visible = false;
                app.StatisticsTab_imu.Visible = true;
                app.TabGroupAnalysisTime.Visible = false;
                app.TabGroupAnalysisTime_imu.Visible = true;
                
                % Hide the first column of real time plot checkboxes
                app.x1CheckBoxRTP.Visible = false;
                app.y1CheckBoxRTP.Visible = false;
                app.z1CheckBoxRTP.Visible = false;
                
                % Hide the second batch of analysis check boxes
                app.x2CheckBox.Visible = false;
                app.y2CheckBox.Visible = false;
                app.z2CheckBox.Visible = false;
                
                app.Accelerometer1Label_4.Visible = false;
                app.Accelerometer2Label_2.Text = "Axis";
                app.Accelerometer2Label_4.Visible = false;
                app.Accelerometer1Label_5.Text = "Axis";
                
                % Toggle the visibility of each mode's tab groups
                app.TablesTab.Visible = false;
                app.TablesTab_imu.Visible = true;
                app.TabGroupRTP.Visible = false;
                app.TabGroupRTP_imu.Visible = true;
                
            end
        end
    end

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            %% Initialise the timer
            
            app.DataAcquisition = timer(...
                'ExecutionMode', 'fixedRate', ...    % Run timer repeatedly
                'Period', 0.001, ...                     % Period is 1 ms
                'BusyMode', 'drop',...              % Queue timer callbacks when busy
                'TimerFcn', @app.StartDataAcquisition);    % Specify callback function
            app.DevicesDropDown.Value = "2 Accelerometers";
            app.device = "2 Accelerometers"; % or "1 IMU"
            initialise(app) % Run the initialisation
            app.SampleRateHzEditField.Value = 1000;
            app.SamplesSpinner.Value = 10;
            pause(4);
        end

        % Close request function: UIFigure
        function UIFigureCloseRequest(app, event)
            stop(app.DataAcquisition); % Stop the Data Acquisition timer object
            app.Serial = ""; % Clear any already created serial objects
            app.SerialBTIn = ""; % ...Prevents errors when closing the app without starting any data acq
            app.SerialBTOut = "";
            
            delete(app.DataAcquisition); % Delete the timer
            delete(app) % Delete (close) the app
        end

        % Button pushed function: StartButton, StartButton_2
        function StartButtonPushed(app, event)
            disableconfig(app); % Prevent config changes while running
            
            app.AnalysisPlotLabel.Visible = true; % Show information label while running
            app.StartButton.Text = "Running..."; % Change button text to running
            app.StartButton_2.Text = "Running..."; % Change button text to running
            app.StartButton.Enable = false; % Disable start button (DAQ page)
            app.StartButton_2.Enable = false; % Disable start button (Analysis page)
            
            app.StopButton.Enable = true; % Enable stop button
            app.StopButton_2.Enable = true; % Enable stop button
            
            app.running = true; % Set the running boolean to true
            app.resetvariables; % Reset variables to obtain a new dataset
            
            if app.DataCaptureViewTabAccelerometer.SelectedTab == app.TableViewTab
                % If table view tab is selected...
                app.TableViewLabel.Visible = true;
                % Show the label (informing that the fields will update
                % once acquisition stopped
            end
            
            period = 1/app.SampleRateHzEditField.Value; % Calculate sample period
            
            tic % Tick the clock to start internal timer
            
            %% Run the timer function
            %% Timer functions were used instead of while/for loops as they
            %% permit interruptions via callbacks (e.g. pressing Stop)
            if app.mode == 2 % If in set samples mode
                numsamples = app.SamplesSpinner.Value;
                app.DataAcquisition = timer(...
                    'ExecutionMode', 'fixedDelay', ...    % Run timer repeatedly
                    'Period', period, ...               % Period is the period specified by user
                    'BusyMode', 'drop',...              % Drop timer callbacks when busy
                    'TasksToExecute', numsamples, ... %
                    'StopFcn', @app.updateAll, ...
                    'TimerFcn', @app.StartDataAcquisition);    % Specify callback function
                start(app.DataAcquisition);
            else
                app.DataAcquisition = timer(...
                    'ExecutionMode', 'fixedDelay', ...    % Run timer repeatedly
                    'Period', period, ...               % Period is the period specified by user
                    'BusyMode', 'drop',...              % Drop timer callbacks when busy
                    'TimerFcn', @app.StartDataAcquisition);    % Specify callback function
                start(app.DataAcquisition);
            end
        end

        % Button pushed function: StopButton, StopButton_2
        function StopButtonPushed(app, event)
            stop(app.DataAcquisition) % Stop the timer function
            app.timeelapsed = toc; % Toc the timer to get the total time elapsed since start
            app.updateAll; % Update all entries, values and plots
        end

        % Button pushed function: RefreshButton
        function RefreshButtonPushed(app, event)
            app.DevicesDropDown.Value = "2 Accelerometers";
            app.device = "2 Accelerometers"; % or "1 IMU"
            initialise(app) % Run the initialisation
            pause(4);
        end

        % Button pushed function: ResetButton, ResetButton_2
        function ResetButtonPushed(app, event)
            currentlyrunning = get(app.DataAcquisition, 'Running'); % Check if the timer is running
            if isequal(currentlyrunning ,'on') % Only do if currently running
                stop(app.DataAcquisition) % Stop the timer
                app.StopDataAcquisition; % Timer end function
            end
            
            app.startupFcn % Run the startup function
        end

        % Button pushed function: ClearButton
        function ClearButtonPushed(app, event)
            app.SerialMonitorTextArea.Value = ''; % Clear the serial monitor field
            app.monitor = {}; % Clear the serial monitor buffer
        end

        % Value changed function: PortListDropDown
        function PortListDropDownValueChanged(app, event)
            app.port = app.PortListDropDown.Value; % The currently selected COM port
        end

        % Value changed function: SerialMonitorLabel
        function SerialMonitorLabelValueChanged(app, event)
            % Determine whether to show or hide the serial monitor and its
            % clear button
            
            app.SerialMonitorTextArea.Visible = app.SerialMonitorLabel.Value;
            app.ClearButton.Enable = app.SerialMonitorLabel.Value;
            app.showserialmonitor.Value = app.SerialMonitorLabel.Value;
        end

        % Selection changed function: AcquisitionModeButtonGroup
        function AcquisitionModeButtonGroupSelectionChanged(app, event)
            % Determine which acquisition mode to operate in and what UI
            % elements to show
            
            selectedButton = app.AcquisitionModeButtonGroup.SelectedObject;
            if selectedButton == app.ContinuousButton
                app.mode = 1;
                app.SamplesSpinner.Enable = false;
            end
            if selectedButton == app.SetSamplesButton
                app.mode = 2;
                app.SamplesSpinner.Enable = true;
                
            end
        end

        % Value changed function: SampleRateHzEditField
        function SampleRateHzEditFieldValueChanged(app, event)
            % Set the sample rate in the edit field
            
            app.Slider.Value =  app.SampleRateHzEditField.Value;
            app.samplerate = app.Slider.Value;
            drawnow
        end

        % Value changing function: Slider
        function SliderValueChanging(app, event)
            % Change the sample rate value with the slider
            
            changingValue = event.Value;
            app.SampleRateHzEditField.Value =  changingValue;
            app.samplerate = app.Slider.Value;
        end

        % Selection change function: DataCaptureViewTabAccelerometer
        function DataCaptureViewTabAccelerometerSelectionChanged(app, event)
            % Toggle show/hide running label for table view mode
            
            selectedTab = app.DataCaptureViewTabAccelerometer.SelectedTab;
            if app.running == false
                app.TableViewLabel.Visible = false;
            else
                if selectedTab == app.GraphViewTab
                    app.TableViewLabel.Visible = false;
                end
                if selectedTab == app.TableViewTab
                    app.TableViewLabel.Visible = true;
                end
            end
        end

        % Value changed function: x1CheckBoxRTP
        function x1CheckBoxRTPValueChanged(app, event)
            % Toggle plot line visibility with checkbox
            
            if app.x1CheckBoxRTP.Value == true
                set(app.PlotLineRTP1x, 'visible', 'on')
            end
            if app.x1CheckBoxRTP.Value == false
                set(app.PlotLineRTP1x, 'visible', 'off')
            end
        end

        % Value changed function: y1CheckBoxRTP
        function y1CheckBoxRTPValueChanged(app, event)
            % Toggle plot line visibility with checkbox
            
            if app.y1CheckBoxRTP.Value == true
                set(app.PlotLineRTP1y, 'visible', 'on')
            end
            if app.y1CheckBoxRTP.Value == false
                set(app.PlotLineRTP1y, 'visible', 'off')
            end
        end

        % Value changed function: z1CheckBoxRTP
        function z1CheckBoxRTPValueChanged(app, event)
            % Toggle plot line visibility with checkbox
            
            if app.z1CheckBoxRTP.Value == true
                set(app.PlotLineRTP1z, 'visible', 'on')
            end
            if app.z1CheckBoxRTP.Value == false
                set(app.PlotLineRTP1z, 'visible', 'off')
            end
        end

        % Value changed function: x2CheckBoxRTP
        function x2CheckBoxRTPValueChanged(app, event)
            % Toggle plot line visibility with checkbox
            
            if app.device == "2 Accelerometers"
                
                if app.x2CheckBoxRTP.Value == true
                    set(app.PlotLineRTP2x, 'visible', 'on')
                end
                if app.x2CheckBoxRTP.Value == false
                    set(app.PlotLineRTP2x, 'visible', 'off')
                end
            end
            
            if app.device == "1 IMU"
                if app.x2CheckBoxRTP.Value == true
                    set(app.PlotLineRTP1x, 'visible', 'on')
                    set(app.PlotLineRTP2x, 'visible', 'on')
                    set(app.PlotLineRTP3x, 'visible', 'on')
                end
                if app.x2CheckBoxRTP.Value == false
                    set(app.PlotLineRTP1x, 'visible', 'off')
                    set(app.PlotLineRTP2x, 'visible', 'off')
                    set(app.PlotLineRTP3x, 'visible', 'off')
                end
            end
        end

        % Value changed function: y2CheckBoxRTP
        function y2CheckBoxRTPValueChanged(app, event)
            % Toggle plot line visibility with checkbox
            
            if app.device == "2 Accelerometers"
                if app.y2CheckBoxRTP.Value == true
                    set(app.PlotLineRTP2y, 'visible', 'on')
                end
                if app.y2CheckBoxRTP.Value == false
                    set(app.PlotLineRTP2y, 'visible', 'off')
                end
            end
            
            if app.device == "1 IMU"
                if app.y2CheckBoxRTP.Value == true
                    set(app.PlotLineRTP1y, 'visible', 'on')
                    set(app.PlotLineRTP2y, 'visible', 'on')
                    set(app.PlotLineRTP3y, 'visible', 'on')
                end
                if app.y2CheckBoxRTP.Value == false
                    set(app.PlotLineRTP1y, 'visible', 'off')
                    set(app.PlotLineRTP2y, 'visible', 'off')
                    set(app.PlotLineRTP3y, 'visible', 'off')
                end
            end
        end

        % Value changed function: z2CheckBoxRTP
        function z2CheckBoxRTPValueChanged(app, event)
            % Toggle plot line visibility with checkbox
            
            if app.device == "2 Accelerometers"
                if app.z2CheckBoxRTP.Value == true
                    set(app.PlotLineRTP2z, 'visible', 'on')
                end
                if app.z2CheckBoxRTP.Value == false
                    set(app.PlotLineRTP2z, 'visible', 'off')
                end
            end
            
            if app.device == "1 IMU"
                if app.z2CheckBoxRTP.Value == true
                    set(app.PlotLineRTP1z, 'visible', 'on')
                    set(app.PlotLineRTP2z, 'visible', 'on')
                    set(app.PlotLineRTP3z, 'visible', 'on')
                end
                if app.z2CheckBoxRTP.Value == false
                    set(app.PlotLineRTP1z, 'visible', 'off')
                    set(app.PlotLineRTP2z, 'visible', 'off')
                    set(app.PlotLineRTP3z, 'visible', 'off')
                end
            end
        end

        % Value changed function: x1CheckBox
        function x1CheckBoxValueChanged(app, event)
            % Toggle plot line visibility with checkbox
            
            if app.device == "2 Accelerometers"
                if app.x1CheckBox.Value == true
                    set(app.PlotLineFP1x, 'visible', 'on')
                    set(app.PlotLineFFT1x, 'visible', 'on')
                end
                
                if app.x1CheckBox.Value == false
                    set(app.PlotLineFP1x, 'visible', 'off')
                    set(app.PlotLineFFT1x, 'visible', 'off')
                end
            end
            
            if app.device == "1 IMU"
                % If the IMU is connected, switching the check boxes
                % toggles the visibilities for each axis in all plots
                if app.x1CheckBox.Value == true
                    set(app.PlotLineFP1x, 'visible', 'on')
                    set(app.PlotLineFP2x, 'visible', 'on')
                    set(app.PlotLineFP3x, 'visible', 'on')
                    set(app.PlotLineFFT1x, 'visible', 'on')
                    set(app.PlotLineFFT2x, 'visible', 'on')
                    set(app.PlotLineFFT3x, 'visible', 'on')
                end
                
                if app.x1CheckBox.Value == false
                    set(app.PlotLineFP1x, 'visible', 'off')
                    set(app.PlotLineFP2x, 'visible', 'off')
                    set(app.PlotLineFP3x, 'visible', 'off')
                    set(app.PlotLineFFT1x, 'visible', 'off')
                    set(app.PlotLineFFT2x, 'visible', 'off')
                    set(app.PlotLineFFT3x, 'visible', 'off')
                end
            end
        end

        % Value changed function: y1CheckBox
        function y1CheckBoxValueChanged(app, event)
            % Toggle plot line visibility with checkbox
            
            if app.device == "2 Accelerometers"
                if app.y1CheckBox.Value == true
                    set(app.PlotLineFP1y, 'visible', 'on')
                    set(app.PlotLineFFT1y, 'visible', 'on')
                end
                if app.y1CheckBox.Value == false
                    set(app.PlotLineFP1y, 'visible', 'off')
                    set(app.PlotLineFFT1y, 'visible', 'off')
                end
            end
            
            if app.device == "1 IMU"
                % If the IMU is connected, switching the check boxes
                % toggles the visibilities for each axis in all plots
                if app.y1CheckBox.Value == true
                    set(app.PlotLineFP1y, 'visible', 'on')
                    set(app.PlotLineFP2y, 'visible', 'on')
                    set(app.PlotLineFP3y, 'visible', 'on')
                    set(app.PlotLineFFT1y, 'visible', 'on')
                    set(app.PlotLineFFT2y, 'visible', 'on')
                    set(app.PlotLineFFT3y, 'visible', 'on')
                end
                
                if app.y1CheckBox.Value == false
                    set(app.PlotLineFP1y, 'visible', 'off')
                    set(app.PlotLineFP2y, 'visible', 'off')
                    set(app.PlotLineFP3y, 'visible', 'off')
                    set(app.PlotLineFFT1y, 'visible', 'off')
                    set(app.PlotLineFFT2y, 'visible', 'off')
                    set(app.PlotLineFFT3y, 'visible', 'off')
                end
            end
        end

        % Value changed function: z1CheckBox
        function z1CheckBoxValueChanged(app, event)
            % Toggle plot line visibility with checkbox
            
            if app.device == "2 Accelerometers"
                if app.z1CheckBox.Value == true
                    set(app.PlotLineFP1z, 'visible', 'on')
                    set(app.PlotLineFFT1z, 'visible', 'on')
                end
                if app.z1CheckBox.Value == false
                    set(app.PlotLineFP1z, 'visible', 'off')
                    set(app.PlotLineFFT1z, 'visible', 'off')
                end
            end
            
            if app.device == "1 IMU"
                % If the IMU is connected, switching the check boxes
                % toggles the visibilities for each axis in all plots
                if app.z1CheckBox.Value == true
                    set(app.PlotLineFP1z, 'visible', 'on')
                    set(app.PlotLineFP2z, 'visible', 'on')
                    set(app.PlotLineFP3z, 'visible', 'on')
                    set(app.PlotLineFFT1z, 'visible', 'on')
                    set(app.PlotLineFFT2z, 'visible', 'on')
                    set(app.PlotLineFFT3z, 'visible', 'on')
                end
                
                if app.z1CheckBox.Value == false
                    set(app.PlotLineFP1z, 'visible', 'off')
                    set(app.PlotLineFP2z, 'visible', 'off')
                    set(app.PlotLineFP3z, 'visible', 'off')
                    set(app.PlotLineFFT1z, 'visible', 'off')
                    set(app.PlotLineFFT2z, 'visible', 'off')
                    set(app.PlotLineFFT3z, 'visible', 'off')
                end
            end
        end

        % Value changed function: x2CheckBox
        function x2CheckBoxValueChanged(app, event)
            % Toggle plot line visibility with checkbox
            
            if app.device == "2 Accelerometers"
                if app.x2CheckBox.Value == true
                    set(app.PlotLineFP2x, 'visible', 'on')
                    set(app.PlotLineFFT2x, 'visible', 'on')
                end
                if app.x2CheckBox.Value == false
                    set(app.PlotLineFP2x, 'visible', 'off')
                    set(app.PlotLineFFT2x, 'visible', 'off')
                end
            end
        end

        % Value changed function: y2CheckBox
        function y2CheckBoxValueChanged(app, event)
            % Toggle plot line visibility with checkbox
            
            if app.device == "2 Accelerometers"
                if app.y2CheckBox.Value == true
                    set(app.PlotLineFP2y, 'visible', 'on')
                    set(app.PlotLineFFT2y, 'visible', 'on')
                end
                if app.y2CheckBox.Value == false
                    set(app.PlotLineFP2y, 'visible', 'off')
                    set(app.PlotLineFFT2y, 'visible', 'off')
                end
            end
        end

        % Value changed function: z2CheckBox
        function z2CheckBoxValueChanged(app, event)
            % Toggle plot line visibility with checkbox
            
            if app.device == "2 Accelerometers"
                if app.z2CheckBox.Value == true
                    set(app.PlotLineFP2z, 'visible', 'on')
                    set(app.PlotLineFFT2z, 'visible', 'on')
                end
                if app.z2CheckBox.Value == false
                    set(app.PlotLineFP2z, 'visible', 'off')
                    set(app.PlotLineFFT2z, 'visible', 'off')
                end
            end
        end

        % Callback function
        function x1CheckBoxFFTValueChanged(app, event)
            % Toggle plot line visibility with checkbox
            
            if app.x1CheckBoxFFT.Value == true
                set(app.PlotLineFFT1x, 'visible', 'on')
            end
            if app.x1CheckBoxFFT.Value == false
                set(app.PlotLineFFT1x, 'visible', 'off')
            end
        end

        % Callback function
        function y1CheckBoxFFTValueChanged(app, event)
            % Toggle plot line visibility with checkbox
            
            if app.y1CheckBoxFFT.Value == true
                set(app.PlotLineFFT1y, 'visible', 'on')
            end
            if app.y1CheckBoxFFT.Value == false
                set(app.PlotLineFFT1y, 'visible', 'off')
            end
        end

        % Callback function
        function z1CheckBoxFFTValueChanged(app, event)
            % Toggle plot line visibility with checkbox
            
            if app.z1CheckBoxFFT.Value == true
                set(app.PlotLineFFT1z, 'visible', 'on')
            end
            if app.z1CheckBoxFFT.Value == false
                set(app.PlotLineFFT1z, 'visible', 'off')
            end
        end

        % Callback function
        function x2CheckBoxFFTValueChanged(app, event)
            % Toggle plot line visibility with checkbox
            
            if app.x2CheckBoxFFT.Value == true
                set(app.PlotLineFFT2x, 'visible', 'on')
            end
            if app.x2CheckBoxFFT.Value == false
                set(app.PlotLineFFT2x, 'visible', 'off')
            end
        end

        % Callback function
        function y2CheckBoxFFTValueChanged(app, event)
            % Toggle plot line visibility with checkbox
            
            if app.y2CheckBoxFFT.Value == true
                set(app.PlotLineFFT2y, 'visible', 'on')
            end
            if app.y2CheckBoxFFT.Value == false
                set(app.PlotLineFFT2y, 'visible', 'off')
            end
        end

        % Callback function
        function z2CheckBoxFFTValueChanged(app, event)
            % Toggle plot line visibility with checkbox
            
            if app.z2CheckBoxFFT.Value == true
                set(app.PlotLineFFT2z, 'visible', 'on')
            end
            if app.z2CheckBoxFFT.Value == false
                set(app.PlotLineFFT2z, 'visible', 'off')
            end
        end

        % Value changed function: DevicesDropDown
        function DevicesDropDownValueChanged(app, event)
            %% When the device type is changed, toggle the visibility of each
            %% mode's figures
            app.StartButton.Enable = false;
            app.StartButton_2.Enable = false;
            %             app.StartButton.Text = "Initialising...";
            %             app.StartButton_2.Text = "Initialising...";
            app.device = app.DevicesDropDown.Value;
            %             app.resetvariables;
            app.createRTP;
            app.initialise;
            app.resetlayout;
            
            %             app.StartButton.Enable = true;
            %             app.StartButton_2.Enable = true;
            %             app.StartButton.Text = "Start";
            %             app.StartButton_2.Text = "Start";
            
%%%%% BELOW HERE IS CODE GENERATED AUTOMATICALLY BY MATLAB, INSTRUCTING IT
%%%%% HOW TO DRAW THE UI ELEMENTS AND INITIALISE THE COMPONENTS
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Color = [0.9412 0.9412 0.9412];
            app.UIFigure.Position = [100 100 869 565];
            app.UIFigure.Name = 'MATLAB App';
            app.UIFigure.CloseRequestFcn = createCallbackFcn(app, @UIFigureCloseRequest, true);
            app.UIFigure.Scrollable = 'on';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.UIFigure);
            app.TabGroup.Position = [1 1 869 565];

            % Create DataAcquisitionTab
            app.DataAcquisitionTab = uitab(app.TabGroup);
            app.DataAcquisitionTab.Tooltip = {'Configure data acquisition parameters here'};
            app.DataAcquisitionTab.Title = 'Data Acquisition';
            app.DataAcquisitionTab.Scrollable = 'on';

            % Create RefreshButton
            app.RefreshButton = uibutton(app.DataAcquisitionTab, 'push');
            app.RefreshButton.ButtonPushedFcn = createCallbackFcn(app, @RefreshButtonPushed, true);
            app.RefreshButton.Tooltip = {'Click to refresh the COM port device list.'; 'TIP: Do if you have connected a new device.'};
            app.RefreshButton.Position = [36 504 100 22];
            app.RefreshButton.Text = 'Refresh';

            % Create StartButton
            app.StartButton = uibutton(app.DataAcquisitionTab, 'push');
            app.StartButton.ButtonPushedFcn = createCallbackFcn(app, @StartButtonPushed, true);
            app.StartButton.Enable = 'off';
            app.StartButton.Tooltip = {'Start data acquisition.'};
            app.StartButton.Position = [36 407 100 22];
            app.StartButton.Text = 'Start';

            % Create AcquisitionModeButtonGroup
            app.AcquisitionModeButtonGroup = uibuttongroup(app.DataAcquisitionTab);
            app.AcquisitionModeButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @AcquisitionModeButtonGroupSelectionChanged, true);
            app.AcquisitionModeButtonGroup.Title = 'Acquisition Mode';
            app.AcquisitionModeButtonGroup.Position = [34 158 224 236];

            % Create ContinuousButton
            app.ContinuousButton = uiradiobutton(app.AcquisitionModeButtonGroup);
            app.ContinuousButton.Text = 'Continuous';
            app.ContinuousButton.Position = [11 190 90 22];
            app.ContinuousButton.Value = true;

            % Create SetSamplesButton
            app.SetSamplesButton = uiradiobutton(app.AcquisitionModeButtonGroup);
            app.SetSamplesButton.Text = 'Set Samples';
            app.SetSamplesButton.Position = [11 158 90 22];

            % Create SamplesSpinner
            app.SamplesSpinner = uispinner(app.AcquisitionModeButtonGroup);
            app.SamplesSpinner.Limits = [1 Inf];
            app.SamplesSpinner.Enable = 'off';
            app.SamplesSpinner.Position = [147 158 64 22];
            app.SamplesSpinner.Value = 10;

            % Create SampleRateHzEditFieldLabel
            app.SampleRateHzEditFieldLabel = uilabel(app.AcquisitionModeButtonGroup);
            app.SampleRateHzEditFieldLabel.HorizontalAlignment = 'right';
            app.SampleRateHzEditFieldLabel.Position = [12 60 101 22];
            app.SampleRateHzEditFieldLabel.Text = 'Sample Rate (Hz)';

            % Create SampleRateHzEditField
            app.SampleRateHzEditField = uieditfield(app.AcquisitionModeButtonGroup, 'numeric');
            app.SampleRateHzEditField.Limits = [1 1000];
            app.SampleRateHzEditField.ValueChangedFcn = createCallbackFcn(app, @SampleRateHzEditFieldValueChanged, true);
            app.SampleRateHzEditField.Tooltip = {'Change the data acquisition sample rate'};
            app.SampleRateHzEditField.Position = [124 60 90 22];
            app.SampleRateHzEditField.Value = 1000;

            % Create Slider
            app.Slider = uislider(app.AcquisitionModeButtonGroup);
            app.Slider.Limits = [1 1000];
            app.Slider.MajorTicks = [1 200 400 600 800 1000];
            app.Slider.MajorTickLabels = {'0', '200', '400', '600', '800', '1000', ''};
            app.Slider.ValueChangingFcn = createCallbackFcn(app, @SliderValueChanging, true);
            app.Slider.MinorTicks = [0 50 100 150 200 250 300 350 400 450 500 550 600 650 700 750 800 850 900 950 1000 1050 1100 1150 1200 1250 1300 1350 1400 1450 1500 1550 1600 1650 1700 1750 1800 1850 1900 1950 2000];
            app.Slider.Position = [18 39 191 3];
            app.Slider.Value = 10;

            % Create Image
            app.Image = uiimage(app.DataAcquisitionTab);
            app.Image.Tooltip = {'This program was developed by Kamal Gamir - Shahin in May 2020 for a group design project.'};
            app.Image.Position = [729 490 111 50];
            app.Image.ImageSource = '1000px-University_of_Leeds_Logo.svg.png';

            % Create DataCaptureViewTabAccelerometer
            app.DataCaptureViewTabAccelerometer = uitabgroup(app.DataAcquisitionTab);
            app.DataCaptureViewTabAccelerometer.SelectionChangedFcn = createCallbackFcn(app, @DataCaptureViewTabAccelerometerSelectionChanged, true);
            app.DataCaptureViewTabAccelerometer.Position = [301 159 539 324];

            % Create GraphViewTab
            app.GraphViewTab = uitab(app.DataCaptureViewTabAccelerometer);
            app.GraphViewTab.Tooltip = {'View real time plots of incoming data'};
            app.GraphViewTab.Title = 'Graph View';

            % Create TabGroupRTP
            app.TabGroupRTP = uitabgroup(app.GraphViewTab);
            app.TabGroupRTP.Position = [0 0 540 300];

            % Create AccelerometersTab
            app.AccelerometersTab = uitab(app.TabGroupRTP);
            app.AccelerometersTab.Title = 'Accelerometers';

            % Create UIAxesRTP
            app.UIAxesRTP = uiaxes(app.AccelerometersTab);
            title(app.UIAxesRTP, 'Real Time Plot')
            xlabel(app.UIAxesRTP, '')
            ylabel(app.UIAxesRTP, 'Acceleration (N)')
            app.UIAxesRTP.PlotBoxAspectRatio = [2 1 1];
            app.UIAxesRTP.YLim = [-20 20];
            app.UIAxesRTP.XTickLabel = '';
            app.UIAxesRTP.YTickLabel = {'-20'; '-15'; '-10'; '-5'; '0'; '5'; '10'; '15'; '20'};
            app.UIAxesRTP.XGrid = 'on';
            app.UIAxesRTP.YGrid = 'on';
            app.UIAxesRTP.Position = [2 3 537 269];

            % Create TabGroupRTP_imu
            app.TabGroupRTP_imu = uitabgroup(app.GraphViewTab);
            app.TabGroupRTP_imu.Visible = 'off';
            app.TabGroupRTP_imu.Position = [0 0 540 300];

            % Create AccelerometerTab_imu
            app.AccelerometerTab_imu = uitab(app.TabGroupRTP_imu);
            app.AccelerometerTab_imu.Title = 'Accelerometer';

            % Create UIAxesRTP_imuA
            app.UIAxesRTP_imuA = uiaxes(app.AccelerometerTab_imu);
            title(app.UIAxesRTP_imuA, 'Real Time Plot')
            xlabel(app.UIAxesRTP_imuA, '')
            ylabel(app.UIAxesRTP_imuA, 'Acceleration (N)')
            app.UIAxesRTP_imuA.PlotBoxAspectRatio = [2 1 1];
            app.UIAxesRTP_imuA.YLim = [-20 20];
            app.UIAxesRTP_imuA.XTickLabel = '';
            app.UIAxesRTP_imuA.YTickLabel = {'-20'; '-15'; '-10'; '-5'; '0'; '5'; '10'; '15'; '20'};
            app.UIAxesRTP_imuA.XGrid = 'on';
            app.UIAxesRTP_imuA.YGrid = 'on';
            app.UIAxesRTP_imuA.Position = [2 3 537 269];

            % Create GyroscopeTab_imu
            app.GyroscopeTab_imu = uitab(app.TabGroupRTP_imu);
            app.GyroscopeTab_imu.Title = 'Gyroscope';

            % Create UIAxesRTP_imuG
            app.UIAxesRTP_imuG = uiaxes(app.GyroscopeTab_imu);
            title(app.UIAxesRTP_imuG, 'Real Time Plot')
            xlabel(app.UIAxesRTP_imuG, '')
            ylabel(app.UIAxesRTP_imuG, 'Angular Velocity (deg/s)')
            app.UIAxesRTP_imuG.PlotBoxAspectRatio = [2 1 1];
            app.UIAxesRTP_imuG.YLim = [-260 260];
            app.UIAxesRTP_imuG.XTickLabel = '';
            app.UIAxesRTP_imuG.YTickLabel = {'-20'; '-15'; '-10'; '-5'; '0'; '5'; '10'; '15'; '20'};
            app.UIAxesRTP_imuG.XGrid = 'on';
            app.UIAxesRTP_imuG.YGrid = 'on';
            app.UIAxesRTP_imuG.Position = [2 3 537 269];

            % Create MagnetometerTab_imu
            app.MagnetometerTab_imu = uitab(app.TabGroupRTP_imu);
            app.MagnetometerTab_imu.Title = 'Magnetometer';

            % Create UIAxesRTP_imuM
            app.UIAxesRTP_imuM = uiaxes(app.MagnetometerTab_imu);
            title(app.UIAxesRTP_imuM, 'Real Time Plot')
            xlabel(app.UIAxesRTP_imuM, '')
            ylabel(app.UIAxesRTP_imuM, 'Magnetic Field Intensity (mG)')
            app.UIAxesRTP_imuM.PlotBoxAspectRatio = [2 1 1];
            app.UIAxesRTP_imuM.YLim = [-60000 60000];
            app.UIAxesRTP_imuM.XTickLabel = '';
            app.UIAxesRTP_imuM.YTick = [-60000 -40000 -20000 0 20000 40000 60000];
            app.UIAxesRTP_imuM.YTickLabel = {'-60000'; '-40000'; '-20000'; '0'; '20000'; '40000'; '60000'};
            app.UIAxesRTP_imuM.XGrid = 'on';
            app.UIAxesRTP_imuM.YGrid = 'on';
            app.UIAxesRTP_imuM.Position = [2 3 537 269];

            % Create TableViewTab
            app.TableViewTab = uitab(app.DataCaptureViewTabAccelerometer);
            app.TableViewTab.Tooltip = {'View complete tabulated data from the last data capture. Refreshes once data capture stops.'};
            app.TableViewTab.Title = 'Table View';

            % Create TablesTab
            app.TablesTab = uitabgroup(app.TableViewTab);
            app.TablesTab.Position = [0 0 540 299];

            % Create Acceleromter1Tab
            app.Acceleromter1Tab = uitab(app.TablesTab);
            app.Acceleromter1Tab.Title = 'Acceleromter 1';

            % Create UITable
            app.UITable = uitable(app.Acceleromter1Tab);
            app.UITable.ColumnName = {'x'; 'y'; 'z'; 'Time (s)'; 'Sample Number'};
            app.UITable.RowName = {};
            app.UITable.Position = [0 3 539 272];

            % Create Acceleromter2Tab
            app.Acceleromter2Tab = uitab(app.TablesTab);
            app.Acceleromter2Tab.Title = 'Acceleromter 2';

            % Create UITable_2
            app.UITable_2 = uitable(app.Acceleromter2Tab);
            app.UITable_2.ColumnName = {'x'; 'y'; 'z'; 'Time (s)'; 'Sample Number'};
            app.UITable_2.RowName = {};
            app.UITable_2.Position = [0 3 539 272];

            % Create TablesTab_imu
            app.TablesTab_imu = uitabgroup(app.TableViewTab);
            app.TablesTab_imu.Visible = 'off';
            app.TablesTab_imu.Position = [0 0 540 299];

            % Create AccelerationNTab_2
            app.AccelerationNTab_2 = uitab(app.TablesTab_imu);
            app.AccelerationNTab_2.Title = 'Acceleration (N)';

            % Create UITable_imuA
            app.UITable_imuA = uitable(app.AccelerationNTab_2);
            app.UITable_imuA.ColumnName = {'x'; 'y'; 'z'; 'Time (s)'; 'Sample Number'};
            app.UITable_imuA.RowName = {};
            app.UITable_imuA.Position = [0 3 539 272];

            % Create AngularVelocitydegsTab
            app.AngularVelocitydegsTab = uitab(app.TablesTab_imu);
            app.AngularVelocitydegsTab.Title = 'Angular Velocity (deg/s)';

            % Create UITable_imuG
            app.UITable_imuG = uitable(app.AngularVelocitydegsTab);
            app.UITable_imuG.ColumnName = {'x'; 'y'; 'z'; 'Time (s)'; 'Sample Number'};
            app.UITable_imuG.RowName = {};
            app.UITable_imuG.Position = [0 3 539 272];

            % Create MagneticFieldIntensitymGTab
            app.MagneticFieldIntensitymGTab = uitab(app.TablesTab_imu);
            app.MagneticFieldIntensitymGTab.Title = 'Magnetic Field Intensity (mG)';

            % Create UITable_imuM
            app.UITable_imuM = uitable(app.MagneticFieldIntensitymGTab);
            app.UITable_imuM.ColumnName = {'x'; 'y'; 'z'; 'Time (s)'; 'Sample Number'};
            app.UITable_imuM.RowName = {};
            app.UITable_imuM.Position = [0 3 539 272];

            % Create StopButton
            app.StopButton = uibutton(app.DataAcquisitionTab, 'push');
            app.StopButton.ButtonPushedFcn = createCallbackFcn(app, @StopButtonPushed, true);
            app.StopButton.Enable = 'off';
            app.StopButton.Tooltip = {'Stop data acquisition.'};
            app.StopButton.Position = [158 407 100 22];
            app.StopButton.Text = 'Stop';

            % Create ClearButton
            app.ClearButton = uibutton(app.DataAcquisitionTab, 'push');
            app.ClearButton.ButtonPushedFcn = createCallbackFcn(app, @ClearButtonPushed, true);
            app.ClearButton.Position = [257 106 100 22];
            app.ClearButton.Text = 'Clear';

            % Create ResetButton
            app.ResetButton = uibutton(app.DataAcquisitionTab, 'push');
            app.ResetButton.ButtonPushedFcn = createCallbackFcn(app, @ResetButtonPushed, true);
            app.ResetButton.Tooltip = {'Reset all variables, fields, plots and stop data capture'};
            app.ResetButton.Position = [158 504 100 22];
            app.ResetButton.Text = 'Reset';

            % Create SerialMonitorTextArea
            app.SerialMonitorTextArea = uitextarea(app.DataAcquisitionTab);
            app.SerialMonitorTextArea.Editable = 'off';
            app.SerialMonitorTextArea.FontName = 'Consolas';
            app.SerialMonitorTextArea.Visible = 'off';
            app.SerialMonitorTextArea.Tooltip = {'Show/Hide the Serial Monitor.'; 'WARNING: Opening the Serial Monitor may slow down data acquisition.'};
            app.SerialMonitorTextArea.Position = [20 21 555 72];

            % Create SerialMonitorLabel
            app.SerialMonitorLabel = uicheckbox(app.DataAcquisitionTab);
            app.SerialMonitorLabel.ValueChangedFcn = createCallbackFcn(app, @SerialMonitorLabelValueChanged, true);
            app.SerialMonitorLabel.Tooltip = {'Show/Hide the Serial Monitor.'; 'WARNING: Opening the Serial Monitor may slow down data acquisition.'};
            app.SerialMonitorLabel.Text = 'Serial Monitor (For Debug Use Only)';
            app.SerialMonitorLabel.Position = [24 106 218 22];

            % Create x1CheckBoxRTP
            app.x1CheckBoxRTP = uicheckbox(app.DataAcquisitionTab);
            app.x1CheckBoxRTP.ValueChangedFcn = createCallbackFcn(app, @x1CheckBoxRTPValueChanged, true);
            app.x1CheckBoxRTP.Text = 'x';
            app.x1CheckBoxRTP.Position = [633 88 28 22];
            app.x1CheckBoxRTP.Value = true;

            % Create y1CheckBoxRTP
            app.y1CheckBoxRTP = uicheckbox(app.DataAcquisitionTab);
            app.y1CheckBoxRTP.ValueChangedFcn = createCallbackFcn(app, @y1CheckBoxRTPValueChanged, true);
            app.y1CheckBoxRTP.Text = 'y';
            app.y1CheckBoxRTP.Position = [633 67 28 22];
            app.y1CheckBoxRTP.Value = true;

            % Create z1CheckBoxRTP
            app.z1CheckBoxRTP = uicheckbox(app.DataAcquisitionTab);
            app.z1CheckBoxRTP.ValueChangedFcn = createCallbackFcn(app, @z1CheckBoxRTPValueChanged, true);
            app.z1CheckBoxRTP.Text = 'z';
            app.z1CheckBoxRTP.Position = [633 46 28 22];
            app.z1CheckBoxRTP.Value = true;

            % Create z2CheckBoxRTP
            app.z2CheckBoxRTP = uicheckbox(app.DataAcquisitionTab);
            app.z2CheckBoxRTP.ValueChangedFcn = createCallbackFcn(app, @z2CheckBoxRTPValueChanged, true);
            app.z2CheckBoxRTP.Text = 'z';
            app.z2CheckBoxRTP.Position = [746 46 28 22];
            app.z2CheckBoxRTP.Value = true;

            % Create y2CheckBoxRTP
            app.y2CheckBoxRTP = uicheckbox(app.DataAcquisitionTab);
            app.y2CheckBoxRTP.ValueChangedFcn = createCallbackFcn(app, @y2CheckBoxRTPValueChanged, true);
            app.y2CheckBoxRTP.Text = 'y';
            app.y2CheckBoxRTP.Position = [746 67 28 22];
            app.y2CheckBoxRTP.Value = true;

            % Create x2CheckBoxRTP
            app.x2CheckBoxRTP = uicheckbox(app.DataAcquisitionTab);
            app.x2CheckBoxRTP.ValueChangedFcn = createCallbackFcn(app, @x2CheckBoxRTPValueChanged, true);
            app.x2CheckBoxRTP.Text = 'x';
            app.x2CheckBoxRTP.Position = [746 88 28 22];
            app.x2CheckBoxRTP.Value = true;

            % Create Accelerometer1Label_4
            app.Accelerometer1Label_4 = uilabel(app.DataAcquisitionTab);
            app.Accelerometer1Label_4.Position = [630 109 93 22];
            app.Accelerometer1Label_4.Text = 'Accelerometer 1';

            % Create Accelerometer2Label_2
            app.Accelerometer2Label_2 = uilabel(app.DataAcquisitionTab);
            app.Accelerometer2Label_2.Position = [743 109 93 22];
            app.Accelerometer2Label_2.Text = 'Accelerometer 2';

            % Create PortListDropDownLabel
            app.PortListDropDownLabel = uilabel(app.DataAcquisitionTab);
            app.PortListDropDownLabel.HorizontalAlignment = 'right';
            app.PortListDropDownLabel.Position = [34 469 50 22];
            app.PortListDropDownLabel.Text = 'Port List';

            % Create PortListDropDown
            app.PortListDropDown = uidropdown(app.DataAcquisitionTab);
            app.PortListDropDown.Items = {};
            app.PortListDropDown.ValueChangedFcn = createCallbackFcn(app, @PortListDropDownValueChanged, true);
            app.PortListDropDown.Tooltip = {'Select the COM port from the list for the data glove.'};
            app.PortListDropDown.Position = [99 469 100 22];
            app.PortListDropDown.Value = {};

            % Create DevicesDropDownLabel
            app.DevicesDropDownLabel = uilabel(app.DataAcquisitionTab);
            app.DevicesDropDownLabel.HorizontalAlignment = 'right';
            app.DevicesDropDownLabel.Position = [34 436 48 22];
            app.DevicesDropDownLabel.Text = 'Devices';

            % Create DevicesDropDown
            app.DevicesDropDown = uidropdown(app.DataAcquisitionTab);
            app.DevicesDropDown.Items = {'2 Accelerometers', '1 IMU'};
            app.DevicesDropDown.ValueChangedFcn = createCallbackFcn(app, @DevicesDropDownValueChanged, true);
            app.DevicesDropDown.Position = [99 436 159 22];
            app.DevicesDropDown.Value = '2 Accelerometers';

            % Create TableViewLabel
            app.TableViewLabel = uilabel(app.DataAcquisitionTab);
            app.TableViewLabel.Visible = 'off';
            app.TableViewLabel.Position = [448 138 278 22];
            app.TableViewLabel.Text = 'Table View will refresh once data read has finished';

            % Create KamalGamirShahin2020Label
            app.KamalGamirShahin2020Label = uilabel(app.DataAcquisitionTab);
            app.KamalGamirShahin2020Label.Enable = 'off';
            app.KamalGamirShahin2020Label.Tooltip = {'This program was developed by Kamal Gamir - Shahin in May 2020 for a group design project.'};
            app.KamalGamirShahin2020Label.Position = [707 1 159 22];
            app.KamalGamirShahin2020Label.Text = '© Kamal Gamir-Shahin 2020';

            % Create AnalysisStatisticsTab
            app.AnalysisStatisticsTab = uitab(app.TabGroup);
            app.AnalysisStatisticsTab.Tooltip = {'Access data analysis and statistics on captured data here'};
            app.AnalysisStatisticsTab.Title = 'Analysis & Statistics';
            app.AnalysisStatisticsTab.Scrollable = 'on';

            % Create ResetButton_2
            app.ResetButton_2 = uibutton(app.AnalysisStatisticsTab, 'push');
            app.ResetButton_2.ButtonPushedFcn = createCallbackFcn(app, @ResetButtonPushed, true);
            app.ResetButton_2.Tooltip = {'Reset all variables, fields, plots and stop data capture'};
            app.ResetButton_2.Position = [158 504 100 22];
            app.ResetButton_2.Text = 'Reset';

            % Create StatisticsTab
            app.StatisticsTab = uitabgroup(app.AnalysisStatisticsTab);
            app.StatisticsTab.Position = [356 315 484 168];

            % Create MaximaTab
            app.MaximaTab = uitab(app.StatisticsTab);
            app.MaximaTab.Title = 'Maxima';
            app.MaximaTab.Scrollable = 'on';

            % Create xEditFieldLabel
            app.xEditFieldLabel = uilabel(app.MaximaTab);
            app.xEditFieldLabel.HorizontalAlignment = 'right';
            app.xEditFieldLabel.Position = [19 93 25 22];
            app.xEditFieldLabel.Text = 'x';

            % Create xEditField
            app.xEditField = uieditfield(app.MaximaTab, 'text');
            app.xEditField.Editable = 'off';
            app.xEditField.Position = [59 93 81 22];
            app.xEditField.Value = '0';

            % Create yEditFieldLabel
            app.yEditFieldLabel = uilabel(app.MaximaTab);
            app.yEditFieldLabel.HorizontalAlignment = 'right';
            app.yEditFieldLabel.Position = [19 66 25 22];
            app.yEditFieldLabel.Text = 'y';

            % Create yEditField
            app.yEditField = uieditfield(app.MaximaTab, 'text');
            app.yEditField.Editable = 'off';
            app.yEditField.Position = [59 66 81 22];
            app.yEditField.Value = '0';

            % Create zEditField_10Label
            app.zEditField_10Label = uilabel(app.MaximaTab);
            app.zEditField_10Label.HorizontalAlignment = 'right';
            app.zEditField_10Label.Position = [19 39 25 22];
            app.zEditField_10Label.Text = 'z';

            % Create zEditField_10
            app.zEditField_10 = uieditfield(app.MaximaTab, 'text');
            app.zEditField_10.Editable = 'off';
            app.zEditField_10.Position = [59 39 81 22];
            app.zEditField_10.Value = '0';

            % Create zEditFieldLabel
            app.zEditFieldLabel = uilabel(app.MaximaTab);
            app.zEditFieldLabel.HorizontalAlignment = 'right';
            app.zEditFieldLabel.Position = [180 39 25 22];
            app.zEditFieldLabel.Text = 'z';

            % Create zEditField
            app.zEditField = uieditfield(app.MaximaTab, 'text');
            app.zEditField.Editable = 'off';
            app.zEditField.Position = [218 39 81 22];
            app.zEditField.Value = '0';

            % Create yEditField_2Label
            app.yEditField_2Label = uilabel(app.MaximaTab);
            app.yEditField_2Label.HorizontalAlignment = 'right';
            app.yEditField_2Label.Position = [179 66 25 22];
            app.yEditField_2Label.Text = 'y';

            % Create yEditField_2
            app.yEditField_2 = uieditfield(app.MaximaTab, 'text');
            app.yEditField_2.Editable = 'off';
            app.yEditField_2.Position = [218 66 81 22];
            app.yEditField_2.Value = '0';

            % Create xEditField_3Label
            app.xEditField_3Label = uilabel(app.MaximaTab);
            app.xEditField_3Label.HorizontalAlignment = 'right';
            app.xEditField_3Label.Position = [180 92 25 22];
            app.xEditField_3Label.Text = 'x';

            % Create xEditField_3
            app.xEditField_3 = uieditfield(app.MaximaTab, 'text');
            app.xEditField_3.Editable = 'off';
            app.xEditField_3.Position = [218 92 81 22];
            app.xEditField_3.Value = '0';

            % Create AccelerationN1Label
            app.AccelerationN1Label = uilabel(app.MaximaTab);
            app.AccelerationN1Label.Position = [19 121 109 22];
            app.AccelerationN1Label.Text = 'Acceleration (N) - 1';

            % Create AccelerationN2Label
            app.AccelerationN2Label = uilabel(app.MaximaTab);
            app.AccelerationN2Label.Position = [177 121 109 22];
            app.AccelerationN2Label.Text = 'Acceleration (N) - 2';

            % Create AveragesTab
            app.AveragesTab = uitab(app.StatisticsTab);
            app.AveragesTab.Title = 'Averages';
            app.AveragesTab.Scrollable = 'on';

            % Create xEditField_9Label
            app.xEditField_9Label = uilabel(app.AveragesTab);
            app.xEditField_9Label.HorizontalAlignment = 'right';
            app.xEditField_9Label.Position = [19 93 25 22];
            app.xEditField_9Label.Text = 'x';

            % Create Avgx1EditField
            app.Avgx1EditField = uieditfield(app.AveragesTab, 'text');
            app.Avgx1EditField.Editable = 'off';
            app.Avgx1EditField.Position = [59 93 81 22];
            app.Avgx1EditField.Value = '0';

            % Create yEditField_7Label
            app.yEditField_7Label = uilabel(app.AveragesTab);
            app.yEditField_7Label.HorizontalAlignment = 'right';
            app.yEditField_7Label.Position = [19 66 25 22];
            app.yEditField_7Label.Text = 'y';

            % Create Avgy1EditField
            app.Avgy1EditField = uieditfield(app.AveragesTab, 'text');
            app.Avgy1EditField.Editable = 'off';
            app.Avgy1EditField.Position = [59 66 81 22];
            app.Avgy1EditField.Value = '0';

            % Create zLabel_2
            app.zLabel_2 = uilabel(app.AveragesTab);
            app.zLabel_2.HorizontalAlignment = 'right';
            app.zLabel_2.Position = [19 39 25 22];
            app.zLabel_2.Text = 'z';

            % Create Avgz1EditField
            app.Avgz1EditField = uieditfield(app.AveragesTab, 'text');
            app.Avgz1EditField.Editable = 'off';
            app.Avgz1EditField.Position = [59 39 81 22];
            app.Avgz1EditField.Value = '0';

            % Create AccelerationN1Label_2
            app.AccelerationN1Label_2 = uilabel(app.AveragesTab);
            app.AccelerationN1Label_2.Position = [19 121 109 22];
            app.AccelerationN1Label_2.Text = 'Acceleration (N) - 1';

            % Create zEditField_5Label
            app.zEditField_5Label = uilabel(app.AveragesTab);
            app.zEditField_5Label.HorizontalAlignment = 'right';
            app.zEditField_5Label.Position = [180 39 25 22];
            app.zEditField_5Label.Text = 'z';

            % Create Avgz2EditField
            app.Avgz2EditField = uieditfield(app.AveragesTab, 'text');
            app.Avgz2EditField.Editable = 'off';
            app.Avgz2EditField.Position = [218 39 81 22];
            app.Avgz2EditField.Value = '0';

            % Create yEditField_8Label
            app.yEditField_8Label = uilabel(app.AveragesTab);
            app.yEditField_8Label.HorizontalAlignment = 'right';
            app.yEditField_8Label.Position = [179 66 25 22];
            app.yEditField_8Label.Text = 'y';

            % Create Avgy2EditField
            app.Avgy2EditField = uieditfield(app.AveragesTab, 'text');
            app.Avgy2EditField.Editable = 'off';
            app.Avgy2EditField.Position = [218 66 81 22];
            app.Avgy2EditField.Value = '0';

            % Create xEditField_11Label
            app.xEditField_11Label = uilabel(app.AveragesTab);
            app.xEditField_11Label.HorizontalAlignment = 'right';
            app.xEditField_11Label.Position = [180 92 25 22];
            app.xEditField_11Label.Text = 'x';

            % Create Avgx2EditField
            app.Avgx2EditField = uieditfield(app.AveragesTab, 'text');
            app.Avgx2EditField.Editable = 'off';
            app.Avgx2EditField.Position = [218 92 81 22];
            app.Avgx2EditField.Value = '0';

            % Create AccelerationN2Label_2
            app.AccelerationN2Label_2 = uilabel(app.AveragesTab);
            app.AccelerationN2Label_2.Position = [177 121 109 22];
            app.AccelerationN2Label_2.Text = 'Acceleration (N) - 2';

            % Create AnalysisTab
            app.AnalysisTab = uitabgroup(app.AnalysisStatisticsTab);
            app.AnalysisTab.Position = [129 35 705 272];

            % Create TimeDomainTab
            app.TimeDomainTab = uitab(app.AnalysisTab);
            app.TimeDomainTab.Tooltip = {'View full time domain plot of data acquisition'};
            app.TimeDomainTab.Title = 'Time Domain';

            % Create TabGroupAnalysisTime
            app.TabGroupAnalysisTime = uitabgroup(app.TimeDomainTab);
            app.TabGroupAnalysisTime.Position = [0 0 704 246];

            % Create AccelerometryTimeTab
            app.AccelerometryTimeTab = uitab(app.TabGroupAnalysisTime);
            app.AccelerometryTimeTab.Title = 'Accelerometer';

            % Create UIAxesFP
            app.UIAxesFP = uiaxes(app.AccelerometryTimeTab);
            title(app.UIAxesFP, 'Accelerometer Data Plot')
            xlabel(app.UIAxesFP, 'Time (s)')
            ylabel(app.UIAxesFP, 'Acceleration (N)')
            app.UIAxesFP.PlotBoxAspectRatio = [3.92718446601942 1 1];
            app.UIAxesFP.YLim = [-20 20];
            app.UIAxesFP.XGrid = 'on';
            app.UIAxesFP.YGrid = 'on';
            app.UIAxesFP.Position = [0 0 701 220];

            % Create TabGroupAnalysisTime_imu
            app.TabGroupAnalysisTime_imu = uitabgroup(app.TimeDomainTab);
            app.TabGroupAnalysisTime_imu.Visible = 'off';
            app.TabGroupAnalysisTime_imu.Position = [0 0 704 246];

            % Create AccelerometryTimeTab_2
            app.AccelerometryTimeTab_2 = uitab(app.TabGroupAnalysisTime_imu);
            app.AccelerometryTimeTab_2.Title = 'Accelerometer';

            % Create UIAxesFP_imuA
            app.UIAxesFP_imuA = uiaxes(app.AccelerometryTimeTab_2);
            title(app.UIAxesFP_imuA, 'Accelerometer Data Plot')
            xlabel(app.UIAxesFP_imuA, 'Time (s)')
            ylabel(app.UIAxesFP_imuA, 'Acceleration (N)')
            app.UIAxesFP_imuA.PlotBoxAspectRatio = [3.92718446601942 1 1];
            app.UIAxesFP_imuA.YLim = [-20 20];
            app.UIAxesFP_imuA.XGrid = 'on';
            app.UIAxesFP_imuA.YGrid = 'on';
            app.UIAxesFP_imuA.Position = [0 0 701 220];

            % Create AccelerometryTimeTab_3
            app.AccelerometryTimeTab_3 = uitab(app.TabGroupAnalysisTime_imu);
            app.AccelerometryTimeTab_3.Title = 'Gyroscope';

            % Create UIAxesFP_imuG
            app.UIAxesFP_imuG = uiaxes(app.AccelerometryTimeTab_3);
            title(app.UIAxesFP_imuG, 'Gyroscope Data Plot')
            xlabel(app.UIAxesFP_imuG, 'Time (s)')
            ylabel(app.UIAxesFP_imuG, 'Angular Velocity (deg/s)')
            app.UIAxesFP_imuG.PlotBoxAspectRatio = [3.92718446601942 1 1];
            app.UIAxesFP_imuG.XGrid = 'on';
            app.UIAxesFP_imuG.YGrid = 'on';
            app.UIAxesFP_imuG.Position = [0 0 701 220];

            % Create AccelerometryTimeTab_4
            app.AccelerometryTimeTab_4 = uitab(app.TabGroupAnalysisTime_imu);
            app.AccelerometryTimeTab_4.Title = 'Magnetometer';

            % Create UIAxesFP_imuM
            app.UIAxesFP_imuM = uiaxes(app.AccelerometryTimeTab_4);
            title(app.UIAxesFP_imuM, 'Magnetometer Data Plot')
            xlabel(app.UIAxesFP_imuM, 'Time (s)')
            ylabel(app.UIAxesFP_imuM, 'Magnetic Field Intensity (mG)')
            app.UIAxesFP_imuM.PlotBoxAspectRatio = [3.92718446601942 1 1];
            app.UIAxesFP_imuM.XGrid = 'on';
            app.UIAxesFP_imuM.YGrid = 'on';
            app.UIAxesFP_imuM.Position = [0 0 701 220];

            % Create FrequencyDomainTab
            app.FrequencyDomainTab = uitab(app.AnalysisTab);
            app.FrequencyDomainTab.Tooltip = {'View full frequency domain plot of data acquisition'};
            app.FrequencyDomainTab.Title = 'Frequency Domain';

            % Create FrequencyAnalysis
            app.FrequencyAnalysis = uitabgroup(app.FrequencyDomainTab);
            app.FrequencyAnalysis.Position = [0 0 704 246];

            % Create AccelerometerTab_5
            app.AccelerometerTab_5 = uitab(app.FrequencyAnalysis);
            app.AccelerometerTab_5.Title = 'Accelerometer';

            % Create UIAxesFFT
            app.UIAxesFFT = uiaxes(app.AccelerometerTab_5);
            title(app.UIAxesFFT, 'Spectrum of Accelerometry Data |X(f)|')
            xlabel(app.UIAxesFFT, 'f (Hz)')
            ylabel(app.UIAxesFFT, 'Amplitude (dB)')
            app.UIAxesFFT.XLim = [0 30];
            app.UIAxesFFT.YLim = [-60 20];
            app.UIAxesFFT.XGrid = 'on';
            app.UIAxesFFT.YGrid = 'on';
            app.UIAxesFFT.Position = [0 0 701 220];

            % Create FrequencyAnalysis_imu
            app.FrequencyAnalysis_imu = uitabgroup(app.FrequencyDomainTab);
            app.FrequencyAnalysis_imu.Visible = 'off';
            app.FrequencyAnalysis_imu.Position = [0 0 704 246];

            % Create AccelerometerTab
            app.AccelerometerTab = uitab(app.FrequencyAnalysis_imu);
            app.AccelerometerTab.Title = 'Accelerometer';

            % Create UIAxesFFT_imuA
            app.UIAxesFFT_imuA = uiaxes(app.AccelerometerTab);
            title(app.UIAxesFFT_imuA, 'Spectrum of Accelerometry Data |X(f)|')
            xlabel(app.UIAxesFFT_imuA, 'f (Hz)')
            ylabel(app.UIAxesFFT_imuA, 'Magnitude (dB)')
            app.UIAxesFFT_imuA.XLim = [0 30];
            app.UIAxesFFT_imuA.YLim = [-60 20];
            app.UIAxesFFT_imuA.XGrid = 'on';
            app.UIAxesFFT_imuA.YGrid = 'on';
            app.UIAxesFFT_imuA.Position = [0 0 701 220];

            % Create GyroscopeTab_2
            app.GyroscopeTab_2 = uitab(app.FrequencyAnalysis_imu);
            app.GyroscopeTab_2.Title = 'Gyroscope';

            % Create UIAxesFFT_imuG
            app.UIAxesFFT_imuG = uiaxes(app.GyroscopeTab_2);
            title(app.UIAxesFFT_imuG, 'Spectrum of Gyroscope Data |X(f)|')
            xlabel(app.UIAxesFFT_imuG, 'f (Hz)')
            ylabel(app.UIAxesFFT_imuG, 'Magnitude (dB)')
            app.UIAxesFFT_imuG.XLim = [0 30];
            app.UIAxesFFT_imuG.YLim = [-60 80];
            app.UIAxesFFT_imuG.XGrid = 'on';
            app.UIAxesFFT_imuG.YGrid = 'on';
            app.UIAxesFFT_imuG.Position = [0 0 701 220];

            % Create MagnetometerTab_2
            app.MagnetometerTab_2 = uitab(app.FrequencyAnalysis_imu);
            app.MagnetometerTab_2.Title = 'Magnetometer';

            % Create UIAxesFFT_imuM
            app.UIAxesFFT_imuM = uiaxes(app.MagnetometerTab_2);
            title(app.UIAxesFFT_imuM, 'Spectrum of Magnetometer Data |X(f)|')
            xlabel(app.UIAxesFFT_imuM, 'f (Hz)')
            ylabel(app.UIAxesFFT_imuM, 'Magnitude (dB)')
            app.UIAxesFFT_imuM.XLim = [0 30];
            app.UIAxesFFT_imuM.XGrid = 'on';
            app.UIAxesFFT_imuM.YGrid = 'on';
            app.UIAxesFFT_imuM.Position = [0 0 701 220];

            % Create StartButton_2
            app.StartButton_2 = uibutton(app.AnalysisStatisticsTab, 'push');
            app.StartButton_2.ButtonPushedFcn = createCallbackFcn(app, @StartButtonPushed, true);
            app.StartButton_2.Enable = 'off';
            app.StartButton_2.Tooltip = {'Start data acquisition.'};
            app.StartButton_2.Position = [36 407 100 22];
            app.StartButton_2.Text = 'Start';

            % Create StopButton_2
            app.StopButton_2 = uibutton(app.AnalysisStatisticsTab, 'push');
            app.StopButton_2.ButtonPushedFcn = createCallbackFcn(app, @StopButtonPushed, true);
            app.StopButton_2.Enable = 'off';
            app.StopButton_2.Tooltip = {'Stop data acquisition.'};
            app.StopButton_2.Position = [158 407 100 22];
            app.StopButton_2.Text = 'Stop';

            % Create AnalysisPlotLabel
            app.AnalysisPlotLabel = uilabel(app.AnalysisStatisticsTab);
            app.AnalysisPlotLabel.Visible = 'off';
            app.AnalysisPlotLabel.Position = [18 318 245 22];
            app.AnalysisPlotLabel.Text = 'Plots will refresh once data read has finished';

            % Create KamalGamirShahin2020Label_2
            app.KamalGamirShahin2020Label_2 = uilabel(app.AnalysisStatisticsTab);
            app.KamalGamirShahin2020Label_2.Enable = 'off';
            app.KamalGamirShahin2020Label_2.Tooltip = {'This program was developed by Kamal Gamir - Shahin in May 2020 for a group design project.'};
            app.KamalGamirShahin2020Label_2.Position = [707 1 159 22];
            app.KamalGamirShahin2020Label_2.Text = '© Kamal Gamir-Shahin 2020';

            % Create Image_2
            app.Image_2 = uiimage(app.AnalysisStatisticsTab);
            app.Image_2.Tooltip = {'This program was developed by Kamal Gamir - Shahin in May 2020 for a group design project.'};
            app.Image_2.Position = [729 490 111 50];
            app.Image_2.ImageSource = '1000px-University_of_Leeds_Logo.svg.png';

            % Create StatisticsTab_imu
            app.StatisticsTab_imu = uitabgroup(app.AnalysisStatisticsTab);
            app.StatisticsTab_imu.Visible = 'off';
            app.StatisticsTab_imu.Position = [356 315 484 168];

            % Create MaximaTab_imu
            app.MaximaTab_imu = uitab(app.StatisticsTab_imu);
            app.MaximaTab_imu.Title = 'Maxima';
            app.MaximaTab_imu.Scrollable = 'on';

            % Create xEditField_13Label
            app.xEditField_13Label = uilabel(app.MaximaTab_imu);
            app.xEditField_13Label.HorizontalAlignment = 'right';
            app.xEditField_13Label.Position = [19 93 25 22];
            app.xEditField_13Label.Text = 'x';

            % Create xEditField_imuA
            app.xEditField_imuA = uieditfield(app.MaximaTab_imu, 'text');
            app.xEditField_imuA.Editable = 'off';
            app.xEditField_imuA.Position = [59 93 81 22];
            app.xEditField_imuA.Value = '0';

            % Create yEditField_10Label
            app.yEditField_10Label = uilabel(app.MaximaTab_imu);
            app.yEditField_10Label.HorizontalAlignment = 'right';
            app.yEditField_10Label.Position = [19 66 25 22];
            app.yEditField_10Label.Text = 'y';

            % Create yEditField_imuA
            app.yEditField_imuA = uieditfield(app.MaximaTab_imu, 'text');
            app.yEditField_imuA.Editable = 'off';
            app.yEditField_imuA.Position = [59 66 81 22];
            app.yEditField_imuA.Value = '0';

            % Create zLabel
            app.zLabel = uilabel(app.MaximaTab_imu);
            app.zLabel.HorizontalAlignment = 'right';
            app.zLabel.Position = [19 39 25 22];
            app.zLabel.Text = 'z';

            % Create zEditField_imuA
            app.zEditField_imuA = uieditfield(app.MaximaTab_imu, 'text');
            app.zEditField_imuA.Editable = 'off';
            app.zEditField_imuA.Position = [59 39 81 22];
            app.zEditField_imuA.Value = '0';

            % Create AccelerationNLabel_2
            app.AccelerationNLabel_2 = uilabel(app.MaximaTab_imu);
            app.AccelerationNLabel_2.Position = [19 121 91 22];
            app.AccelerationNLabel_2.Text = 'Acceleration (N)';

            % Create zEditField_7Label
            app.zEditField_7Label = uilabel(app.MaximaTab_imu);
            app.zEditField_7Label.HorizontalAlignment = 'right';
            app.zEditField_7Label.Position = [180 39 25 22];
            app.zEditField_7Label.Text = 'z';

            % Create zEditField_imuG
            app.zEditField_imuG = uieditfield(app.MaximaTab_imu, 'text');
            app.zEditField_imuG.Editable = 'off';
            app.zEditField_imuG.Position = [218 39 81 22];
            app.zEditField_imuG.Value = '0';

            % Create yEditField_11Label
            app.yEditField_11Label = uilabel(app.MaximaTab_imu);
            app.yEditField_11Label.HorizontalAlignment = 'right';
            app.yEditField_11Label.Position = [179 66 25 22];
            app.yEditField_11Label.Text = 'y';

            % Create yEditField_imuG
            app.yEditField_imuG = uieditfield(app.MaximaTab_imu, 'text');
            app.yEditField_imuG.Editable = 'off';
            app.yEditField_imuG.Position = [218 66 81 22];
            app.yEditField_imuG.Value = '0';

            % Create xEditField_15Label
            app.xEditField_15Label = uilabel(app.MaximaTab_imu);
            app.xEditField_15Label.HorizontalAlignment = 'right';
            app.xEditField_15Label.Position = [180 92 25 22];
            app.xEditField_15Label.Text = 'x';

            % Create xEditField_imuG
            app.xEditField_imuG = uieditfield(app.MaximaTab_imu, 'text');
            app.xEditField_imuG.Editable = 'off';
            app.xEditField_imuG.Position = [218 92 81 22];
            app.xEditField_imuG.Value = '0';

            % Create AngularVelocitydegsLabel_2
            app.AngularVelocitydegsLabel_2 = uilabel(app.MaximaTab_imu);
            app.AngularVelocitydegsLabel_2.Position = [177 121 132 22];
            app.AngularVelocitydegsLabel_2.Text = 'Angular Velocity (deg/s)';

            % Create zEditField_8Label
            app.zEditField_8Label = uilabel(app.MaximaTab_imu);
            app.zEditField_8Label.HorizontalAlignment = 'right';
            app.zEditField_8Label.Position = [346 39 25 22];
            app.zEditField_8Label.Text = 'z';

            % Create zEditField_imuM
            app.zEditField_imuM = uieditfield(app.MaximaTab_imu, 'text');
            app.zEditField_imuM.Editable = 'off';
            app.zEditField_imuM.Position = [387 39 81 22];
            app.zEditField_imuM.Value = '0';

            % Create yEditField_12Label
            app.yEditField_12Label = uilabel(app.MaximaTab_imu);
            app.yEditField_12Label.HorizontalAlignment = 'right';
            app.yEditField_12Label.Position = [345 66 25 22];
            app.yEditField_12Label.Text = 'y';

            % Create yEditField_imuM
            app.yEditField_imuM = uieditfield(app.MaximaTab_imu, 'text');
            app.yEditField_imuM.Editable = 'off';
            app.yEditField_imuM.Position = [387 66 81 22];
            app.yEditField_imuM.Value = '0';

            % Create xEditField_16Label
            app.xEditField_16Label = uilabel(app.MaximaTab_imu);
            app.xEditField_16Label.HorizontalAlignment = 'right';
            app.xEditField_16Label.Position = [346 92 25 22];
            app.xEditField_16Label.Text = 'x';

            % Create xEditField_imuM
            app.xEditField_imuM = uieditfield(app.MaximaTab_imu, 'text');
            app.xEditField_imuM.Editable = 'off';
            app.xEditField_imuM.Position = [387 92 81 22];
            app.xEditField_imuM.Value = '0';

            % Create MFieldIntensitymGLabel_2
            app.MFieldIntensitymGLabel_2 = uilabel(app.MaximaTab_imu);
            app.MFieldIntensitymGLabel_2.Position = [345 121 123 22];
            app.MFieldIntensitymGLabel_2.Text = 'M Field Intensity (mG)';

            % Create AveragesTab_imu
            app.AveragesTab_imu = uitab(app.StatisticsTab_imu);
            app.AveragesTab_imu.Title = 'Averages';
            app.AveragesTab_imu.Scrollable = 'on';

            % Create xEditField_9Label_2
            app.xEditField_9Label_2 = uilabel(app.AveragesTab_imu);
            app.xEditField_9Label_2.HorizontalAlignment = 'right';
            app.xEditField_9Label_2.Position = [19 93 25 22];
            app.xEditField_9Label_2.Text = 'x';

            % Create Avgx1EditField_imu
            app.Avgx1EditField_imu = uieditfield(app.AveragesTab_imu, 'text');
            app.Avgx1EditField_imu.Editable = 'off';
            app.Avgx1EditField_imu.Position = [59 93 81 22];
            app.Avgx1EditField_imu.Value = '0';

            % Create yEditField_7Label_2
            app.yEditField_7Label_2 = uilabel(app.AveragesTab_imu);
            app.yEditField_7Label_2.HorizontalAlignment = 'right';
            app.yEditField_7Label_2.Position = [19 66 25 22];
            app.yEditField_7Label_2.Text = 'y';

            % Create Avgy1EditField_imu
            app.Avgy1EditField_imu = uieditfield(app.AveragesTab_imu, 'text');
            app.Avgy1EditField_imu.Editable = 'off';
            app.Avgy1EditField_imu.Position = [59 66 81 22];
            app.Avgy1EditField_imu.Value = '0';

            % Create zLabel_3
            app.zLabel_3 = uilabel(app.AveragesTab_imu);
            app.zLabel_3.HorizontalAlignment = 'right';
            app.zLabel_3.Position = [19 39 25 22];
            app.zLabel_3.Text = 'z';

            % Create Avgz1EditField_imu
            app.Avgz1EditField_imu = uieditfield(app.AveragesTab_imu, 'text');
            app.Avgz1EditField_imu.Editable = 'off';
            app.Avgz1EditField_imu.Position = [59 39 81 22];
            app.Avgz1EditField_imu.Value = '0';

            % Create AccelerationNLabel
            app.AccelerationNLabel = uilabel(app.AveragesTab_imu);
            app.AccelerationNLabel.Position = [19 121 91 22];
            app.AccelerationNLabel.Text = 'Acceleration (N)';

            % Create zEditField_5Label_2
            app.zEditField_5Label_2 = uilabel(app.AveragesTab_imu);
            app.zEditField_5Label_2.HorizontalAlignment = 'right';
            app.zEditField_5Label_2.Position = [180 39 25 22];
            app.zEditField_5Label_2.Text = 'z';

            % Create Avgz2EditField_imu
            app.Avgz2EditField_imu = uieditfield(app.AveragesTab_imu, 'text');
            app.Avgz2EditField_imu.Editable = 'off';
            app.Avgz2EditField_imu.Position = [218 39 81 22];
            app.Avgz2EditField_imu.Value = '0';

            % Create yEditField_8Label_2
            app.yEditField_8Label_2 = uilabel(app.AveragesTab_imu);
            app.yEditField_8Label_2.HorizontalAlignment = 'right';
            app.yEditField_8Label_2.Position = [179 66 25 22];
            app.yEditField_8Label_2.Text = 'y';

            % Create Avgy2EditField_imu
            app.Avgy2EditField_imu = uieditfield(app.AveragesTab_imu, 'text');
            app.Avgy2EditField_imu.Editable = 'off';
            app.Avgy2EditField_imu.Position = [218 66 81 22];
            app.Avgy2EditField_imu.Value = '0';

            % Create xEditField_11Label_2
            app.xEditField_11Label_2 = uilabel(app.AveragesTab_imu);
            app.xEditField_11Label_2.HorizontalAlignment = 'right';
            app.xEditField_11Label_2.Position = [180 92 25 22];
            app.xEditField_11Label_2.Text = 'x';

            % Create Avgx2EditField_imu
            app.Avgx2EditField_imu = uieditfield(app.AveragesTab_imu, 'text');
            app.Avgx2EditField_imu.Editable = 'off';
            app.Avgx2EditField_imu.Position = [218 92 81 22];
            app.Avgx2EditField_imu.Value = '0';

            % Create AngularVelocitydegsLabel
            app.AngularVelocitydegsLabel = uilabel(app.AveragesTab_imu);
            app.AngularVelocitydegsLabel.Position = [177 121 132 22];
            app.AngularVelocitydegsLabel.Text = 'Angular Velocity (deg/s)';

            % Create zEditField_9Label
            app.zEditField_9Label = uilabel(app.AveragesTab_imu);
            app.zEditField_9Label.HorizontalAlignment = 'right';
            app.zEditField_9Label.Position = [346 39 25 22];
            app.zEditField_9Label.Text = 'z';

            % Create Avgz3EditField_imu
            app.Avgz3EditField_imu = uieditfield(app.AveragesTab_imu, 'text');
            app.Avgz3EditField_imu.Editable = 'off';
            app.Avgz3EditField_imu.Position = [387 39 81 22];
            app.Avgz3EditField_imu.Value = '0';

            % Create yEditField_13Label
            app.yEditField_13Label = uilabel(app.AveragesTab_imu);
            app.yEditField_13Label.HorizontalAlignment = 'right';
            app.yEditField_13Label.Position = [345 66 25 22];
            app.yEditField_13Label.Text = 'y';

            % Create Avgy3EditField_imu
            app.Avgy3EditField_imu = uieditfield(app.AveragesTab_imu, 'text');
            app.Avgy3EditField_imu.Editable = 'off';
            app.Avgy3EditField_imu.Position = [387 66 81 22];
            app.Avgy3EditField_imu.Value = '0';

            % Create xEditField_17Label
            app.xEditField_17Label = uilabel(app.AveragesTab_imu);
            app.xEditField_17Label.HorizontalAlignment = 'right';
            app.xEditField_17Label.Position = [346 92 25 22];
            app.xEditField_17Label.Text = 'x';

            % Create Avgx3EditField_imu
            app.Avgx3EditField_imu = uieditfield(app.AveragesTab_imu, 'text');
            app.Avgx3EditField_imu.Editable = 'off';
            app.Avgx3EditField_imu.Position = [387 92 81 22];
            app.Avgx3EditField_imu.Value = '0';

            % Create MFieldIntensitymGLabel
            app.MFieldIntensitymGLabel = uilabel(app.AveragesTab_imu);
            app.MFieldIntensitymGLabel.Position = [345 121 123 22];
            app.MFieldIntensitymGLabel.Text = 'M Field Intensity (mG)';

            % Create x1CheckBox
            app.x1CheckBox = uicheckbox(app.AnalysisStatisticsTab);
            app.x1CheckBox.ValueChangedFcn = createCallbackFcn(app, @x1CheckBoxValueChanged, true);
            app.x1CheckBox.Enable = 'off';
            app.x1CheckBox.Text = 'x';
            app.x1CheckBox.Position = [15 238 28 22];
            app.x1CheckBox.Value = true;

            % Create y1CheckBox
            app.y1CheckBox = uicheckbox(app.AnalysisStatisticsTab);
            app.y1CheckBox.ValueChangedFcn = createCallbackFcn(app, @y1CheckBoxValueChanged, true);
            app.y1CheckBox.Enable = 'off';
            app.y1CheckBox.Text = 'y';
            app.y1CheckBox.Position = [15 217 28 22];
            app.y1CheckBox.Value = true;

            % Create z1CheckBox
            app.z1CheckBox = uicheckbox(app.AnalysisStatisticsTab);
            app.z1CheckBox.ValueChangedFcn = createCallbackFcn(app, @z1CheckBoxValueChanged, true);
            app.z1CheckBox.Enable = 'off';
            app.z1CheckBox.Text = 'z';
            app.z1CheckBox.Position = [15 196 28 22];
            app.z1CheckBox.Value = true;

            % Create x2CheckBox
            app.x2CheckBox = uicheckbox(app.AnalysisStatisticsTab);
            app.x2CheckBox.ValueChangedFcn = createCallbackFcn(app, @x2CheckBoxValueChanged, true);
            app.x2CheckBox.Enable = 'off';
            app.x2CheckBox.Text = 'z';
            app.x2CheckBox.Position = [15 94 28 22];
            app.x2CheckBox.Value = true;

            % Create y2CheckBox
            app.y2CheckBox = uicheckbox(app.AnalysisStatisticsTab);
            app.y2CheckBox.ValueChangedFcn = createCallbackFcn(app, @y2CheckBoxValueChanged, true);
            app.y2CheckBox.Enable = 'off';
            app.y2CheckBox.Text = 'y';
            app.y2CheckBox.Position = [15 115 28 22];
            app.y2CheckBox.Value = true;

            % Create z2CheckBox
            app.z2CheckBox = uicheckbox(app.AnalysisStatisticsTab);
            app.z2CheckBox.ValueChangedFcn = createCallbackFcn(app, @z2CheckBoxValueChanged, true);
            app.z2CheckBox.Enable = 'off';
            app.z2CheckBox.Text = 'x';
            app.z2CheckBox.Position = [15 136 28 22];
            app.z2CheckBox.Value = true;

            % Create Accelerometer1Label_5
            app.Accelerometer1Label_5 = uilabel(app.AnalysisStatisticsTab);
            app.Accelerometer1Label_5.Position = [12 259 93 22];
            app.Accelerometer1Label_5.Text = 'Accelerometer 1';

            % Create Accelerometer2Label_4
            app.Accelerometer2Label_4 = uilabel(app.AnalysisStatisticsTab);
            app.Accelerometer2Label_4.Position = [12 157 93 22];
            app.Accelerometer2Label_4.Text = 'Accelerometer 2';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = GUI3_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end