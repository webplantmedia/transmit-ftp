fun! TransmitFtpSendFile()
    let TransmitFtpFileName = expand("%:p")
    let TransmitFtpAppleScript = split(&runtimepath, ",")[0] . "/bundle/transmit-ftp/apple/send_to_transmit.applescript"
    silent exec '!osascript "' . TransmitFtpAppleScript . '" "' . TransmitFtpFileName . '"'
	redraw!
	echo "File " . TransmitFtpFileName . " sent to Transmit" 
endfunction

" nnoremap <C-S-U> :call TransmitFtpSendFile()<CR>
