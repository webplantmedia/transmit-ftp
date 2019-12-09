fun! TransmitFtpSendFile()
    let TransmitFtpFileName = expand("%:p")
    let TransmitFtpAppleScript = $HOME . "/.vim/plugged/transmit-ftp/apple/send_to_transmit.applescript"
    silent exec '!osascript "' . TransmitFtpAppleScript . '" "' . TransmitFtpFileName . '"'
	redraw!
	echo "File " . TransmitFtpFileName . " sent to Transmit" 
endfunction

" nnoremap <C-S-U> :call TransmitFtpSendFile()<CR>
