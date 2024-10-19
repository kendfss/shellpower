param (
    [string[]]$Paths
)

# Define a list of image file extensions to check for (in lowercase)
$imageExtensions = @("jpg", "jpeg", "png", "gif", "bmp", "tiff")

# Initialize an array to hold image paths
$imageList = @()

# Iterate through each path provided as an argument
foreach ($path in $Paths) {
    # Check if the path is a directory
    if (Test-Path $path -PathType Container) {
        # Get all files in the directory and check their extensions
        $files = Get-ChildItem -Path $path -File -Recurse
        foreach ($file in $files) {
            # Get the file extension and convert it to lowercase
            $extension = $file.Extension.TrimStart('.').ToLower()
            if ($imageExtensions -contains $extension) {
                $imageList += (Resolve-Path $file.FullName)
            }
        }
    }
    # Check if the path is a file and an image
    elseif (Test-Path $path -PathType Leaf) {
        # Get the file extension and convert it to lowercase
        $extension = $path.Substring($path.LastIndexOf('.') + 1).ToLower()
        if ($imageExtensions -contains $extension) {
            $imageList += (Resolve-Path $path)
        }
    }
}

# Create the image_list.txt file in the current working directory
$imageListPath = Join-Path -Path (Get-Location) -ChildPath "image_list.txt"

# Write the image paths to the file
$imageList | ForEach-Object { "file '$($_)'" } | Set-Content -Path $imageListPath -Encoding UTF8

# Inform the user about the created file
Write-Host "Image list created at: $imageListPath"
