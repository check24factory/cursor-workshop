# ⚡️ 4. The Jira MCP Superpower

**Goal:** Connect Cursor to Jira and create tickets directly from the editor, using the rule we just built.

---

### Workshop Steps:

1.  **Generate Your Jira API Token:**
    -   Go to [your Atlassian profile](https://id.atlassian.com/manage-profile/security/api-tokens).
    -   Click `Create API token`.
    -   Name it `Cursor-Workshop` and copy the generated token. **Save it—you won't see it again!**

2.  **Configure MCP:**
    -   Head to cursor's settings and open the `mcp.json` file to enter the following values:
    ```json
    {
        "mcpServers": {
            "mcp-atlassian": {
                "command": "docker",
                "args": [
                    "run",
                    "-i",
                    "--rm",
                    "-e", "JIRA_URL",
                    "-e", "JIRA_USERNAME",
                    "-e", "JIRA_API_TOKEN",
                    "ghcr.io/sooperset/mcp-atlassian:0.10.6"
                ],
                "env": {
                    "JIRA_URL": "https://c24-aiforge.atlassian.net/",
                    "JIRA_USERNAME": "surname.name@check24.de",
                    "JIRA_API_TOKEN": "Your_Jira_API_Token"
                }
            }
        }
    }
    ```
    -   Replace the three placeholders:
        -   `JIRA_URL`: `https://your-company.atlassian.net`
        -   `JIRA_USERNAME`: `your.email@company.com`
        -   `JIRA_API_TOKEN`: The token you just created in step 1.
    -   Save the file. Cursor will automatically connect.

3.  **Find Your Project:** Gather your project key from Jira.

4.  **Create a Ticket:** Use the AI and your rule from the last session to draft a ticket.
    -   *Example: "Using @my-jira-rule.mdc, create a bug ticket in project PROJ for 'Login button is broken on mobile' with high priority."*

5.  **Verify:** Check Jira to see your new ticket!
6.  **Refine:** Refine the ticket interactively with the AI.

---
[⬅️ Back to Workshop Overview](../README.md)
