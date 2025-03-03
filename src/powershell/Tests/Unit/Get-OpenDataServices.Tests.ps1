# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

Describe 'Get-OpenDataServices' {
    It 'Should return same rows as the CSV file' {
        # Arrange
        . "$PSScriptRoot/../../Private/Get-OpenDataServices.ps1"
        $csv = Import-Csv "$PSScriptRoot/../../../open-data/Services.csv"

        # Act
        $cmd = Get-OpenDataServices

        # Assert
        $cmd.Count | Should -Be $csv.Count
    }
}
