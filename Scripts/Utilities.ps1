function EncryptToken($token){
    $result = ""
    if (-not ([string]::IsNullOrEmpty($token))){
        $hasher = new-object System.Security.Cryptography.SHA256Managed
        $toHash = [System.Text.Encoding]::UTF8.GetBytes($token)
        $hashByteArray = $hasher.ComputeHash($toHash)
        For ($i=0; $i -lt $hashByteArray.Length; $i++) {
            $result +=$hashByteArray[$i].ToString("X2");
        }
    }
    return $result;
}
