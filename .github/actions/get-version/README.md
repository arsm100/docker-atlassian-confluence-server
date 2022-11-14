# Retrieve The Latest Confluence Version from Atlassian Feeds

This GitHub action helps retrieve the latest published Confluence version from either the Atlassian EAP or GA Feeds and
returns it as output. Alternatively, if a specific version is provided, the polling is skipped and the provided version
is set as the output instead.

## Usage

```yml
  get_version:
    name: Get Confluence Version
    runs-on: ubuntu-latest
    outputs:
      version: ${{ steps.get_version.outputs.version }}
    steps:
      - uses: actions/checkout@v3
      - name: Get Version
        id: get_version
        uses: ./.github/actions/get-version
        with:
          # Optional provided version to use and skip checking the Atlassian feeds
          version:
          # Type of Atlassian feed to check for latest Confluence versions. Can either be EAP or GA.
          type:
```

### Example

To retrieve the latest EAP version, the action can be used as such:

```yml
  get_eap_version:
    name: Get EAP Version
    runs-on: ubuntu-latest
    outputs:
      version: ${{ steps.get_eap_version.outputs.version }}
    steps:
      - uses: actions/checkout@v3
      - name: Get EAP Version
        id: get_eap_version
        uses: ./.github/actions/get-version
        with:
          type: EAP

    use_latest_version:
      name: Use Latest EAP version
      needs: get_eap_version
      run: echo "Latest EAP version is ${{ needs.get_eap_version.outputs.version }}"
      shell: bash
```