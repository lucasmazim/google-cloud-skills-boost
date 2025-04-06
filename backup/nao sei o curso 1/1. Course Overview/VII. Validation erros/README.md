## Dialogflow Validation Errors and Warnings

To support virtual agent designers in creating high-quality agents, Dialogflow offers a **validation feature** that identifies errors and warnings. Validation results are automatically available each time agent training is completed, accessible through the **Dialogflow console** or **API**.

### Types of Validation Feedback
Validation results include **errors** and **warnings**:
- **Errors**: Critical issues that can prevent the agent from functioning properly in responding to user requests. It is recommended to resolve all errors to ensure smooth operation.
- **Warnings**: Less severe issues that may not stop the agent from working but could impact quality. It's recommended to review and resolve these for optimal performance.

### Common Validation Issues
Some typical validation messages you may encounter include:
- **Similar Training Phrases**: When training phrases across intents are too similar, causing potential conflicts in intent matching.
- **Unused Parameters**: Parameters defined in an intent that are not included in enough training phrases.
- **Missing Negative Examples**: No negative examples provided for fallback intents.
- **Inconsistent Annotation**: Text annotated in some training phrases but not in others.

### Accessing Validation Results
To view validation data in Dialogflow CX:
1. Go to the **Dialogflow Console**.
2. Select your agent and click on **Validation** in the sidebar.
3. Expand issues highlighted for each intent or entity.

In **Intent List** and **Entity List** pages:
- Any intents or entities with validation issues will display an error indicator.
- When viewing a specific intent or entity with errors, an error indicator appears near the **Save** button, showing a list of validation issues.

### Adjusting Severity Levels
By default, only **critical** or **error** severities are shown. To include **warnings** and **info messages**, toggle the severity settings in the validation section. Hovering over error indicators for specific training phrases or parameters provides additional details.

### Automatic Validation
Automatic validation is enabled by default to identify issues not caught in manual testing. This runs each time you invoke agent training, such as when you save changes.

### Accessing Validation Results via API
Validation results are also accessible via the **Dialogflow API**, though most users will primarily interact with the console for these insights.

---

## Machine Learning and Entity Naming in Dialogflow

### Machine Learning in Dialogflow Agents
Dialogflow agents use **machine learning (ML) algorithms** to:
- Interpret user inputs.
- Match expressions to the correct intents.
- Extract structured data.

Each agent’s ML model is tailored to its unique training data, updating each time you:
- Modify intents and entities.
- Import or restore an agent.
- Train your agent.

### Custom Entity Naming
When creating custom entities:
- **Naming Rules**: Entity names must begin with a letter and may include:
  - Uppercase and lowercase letters (`A-Z`, `a-z`)
  - Digits (`0-9`)
  - Underscores (`_`)
  - Hyphens (`-`)
- **Non-Competing Intents**: Ensure entities are used in distinct, non-competing intents. Non-competing intents have unique training phrases or different input contexts, which helps them to be triggered correctly within different conversational branches.
