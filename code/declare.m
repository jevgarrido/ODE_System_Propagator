function varargout = declare(varargin)
    % This function assigns a desired value (input) to a variable number
    % of outputs. Useful to declare multiple variables at once before
    % assignment loops ( preallocating ).
    %
    %   - If there are no inputs, all the outputs are assigned empty arrays.
    %
    %   - If there is only one input, all the outputs are equal to it.
    %
    %   - If the number of inputs is the same as outputs, outputs = inputs.
    %
    %   - If the dimensions of inputs/outputs are inconsistent, returns a
    %   useful message.
    
    varargout{nargout} = [];                % No inputs
    
    if nargin == 1                          % One input
        varargout(:) = varargin(1);
    
    elseif nargin > 1 && nargin == nargout  % Same number of inputs as outputs
        varargout = varargin;

    elseif nargin > 1 && nargin ~= nargout  % Inputs and outputs are inconsistent
        disp('Number of inputs is inconsistent with the number of outputs.');
        clear varargout;
    end
end