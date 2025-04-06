## Dialogflow Testing Tools

### Built-In Testing Simulators
Both **Dialogflow ES** and **Dialogflow CX** provide a built-in testing simulator, allowing you to:

- Run test cases by entering phrases that simulate user inputs.
- Capture parameters that Dialogflow assigns to specified values based on user utterances.

In **Dialogflow CX**, additional features allow for optimized testing at scale:
- Run tests individually or in series.
- Save test scenarios for future use.
- Mark test scenarios as "golden" to denote that they reflect the expected results, with the option to update them as needed.

### Creating Golden Test Cases
Dialogflow CX includes a tool under the "Test Cases" section for setting up a **testing simulator**:
1. **Create Golden Test Cases**: Develop conversations that mirror expected interactions with end-users, covering common scenarios.
2. **Reuse Golden Test Cases**: After marking scenarios as golden test cases, they can be reused as you refine your virtual agent.

#### Steps to Create a Test Case
1. Run through a specific test case conversation in the **simulator**—this should align with the training phrases and conversations outlined in your design document.
2. Click **"Save as Test Case"** to store the scenario, adding relevant details:
   - **Name**: Give a meaningful name for easy identification, especially useful when you have multiple test cases.
   - **Tags and Notes**: Use tags and add notes to differentiate scenarios with similar phrases but varying parameters.
   - **Parameter Tracking**: Select which parameters to monitor, particularly for test cases that collect or update values.

#### Running a Test Case
From the **Test Cases** section:
1. Select the test case and view its details—original saved test case on the left (under "Golden Test Case") and the latest run on the right.
2. To rerun, click **"Run"** in the upper right.
3. Hover over the box next to the test case number to view tracked parameters and confirm they are set correctly based on user input.

### Validation Messages
Dialogflow provides validation messages to help improve your virtual agent’s quality, categorized by severity:

- **Info**: Suggests improvements based on best practices for design.
- **Warnings**: Indicates potential unexpected behavior due to design.
- **Errors**: Highlights issues that may cause failures in the agent's functionality.

For instance, an **unmatched intent** warning icon (yellow) signals intent-matching issues, while a **webhook error** icon (red) indicates an error in webhook integration.

### Example of Validation Message
A warning icon may appear if there is **no default negative intent** for certain flows, such as "Change Tier." This can help Dialogflow differentiate between similar phrases with different intents. 

Example:
- **Correct Match**: User says, "I'd like to change tier," which matches the "Change Tier" intent.
- **Incorrect Match**: User says, "Which tier of support do you handle?" This phrase should be added to a default negative intent, as it is similar but not a true match.

### Dialogflow Analytics
Dialogflow Analytics provides insights on various aspects of your virtual agent’s performance:

- **Usage**: Total session counts, text or speech-based sessions, and sessions by language.
- **Engagement**: Focuses on interaction rates.
- **Understanding**: Aggregated stats at flow and page levels, tracking unhandled messages, session counts, and exit percentages.
- **Path**: Displays sessions by path, showing where sessions ended and average durations.
- **Back-End**: Tracks sessions by status codes, integration details, and webhook status.

> **Note**: Analytics data may take up to a day to become visible in your lab environment.
