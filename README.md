# Lucky Orange Session Recording Playback URL – GTM Variable Template

This Google Tag Manager (GTM) custom variable template allows you to automatically retrieve the current user's Lucky Orange session replay URL. You can use this in your GTM tags, send it to analytics platforms, or attach it to CRM systems and support tools.

---

## 🚀 How to Use

### 1. Import the Template into GTM

1. Open your [Google Tag Manager](https://tagmanager.google.com/) container.
2. Navigate to **Templates** > **Variable Templates**.
3. Click **New** and then click the vertical three-dot menu (⋮) in the top right.
4. Select **Import**.
5. Upload the `.tpl` file for this variable template (from this repo).
6. Save the template with a name like `Lucky Orange Session URL`.

### 2. Create a Variable Using the Template

1. Go to **Variables** > **User-Defined Variables**.
2. Click **New**.
3. Choose the custom variable template you just imported.
4. Name your variable (e.g., `LO Session Playback URL`).
5. Save.

### 3. Preview the Variable in GTM

1. Click **Preview** in GTM to open Tag Assistant.
2. Navigate through your site while GTM is in preview mode.
3. In the **Variables** tab, check for the `LO Session Playback URL` variable.
4. If everything is working, you’ll see the session URL in the following format:

https://app.luckyorange.com/visitors/sessions/6e5e935b-1749925949393-d0c68a1d29403d3e/timeline


---

## 📌 Use Cases

- Attach the Lucky Orange session replay link to form submissions.
- Include the session URL in support tickets.
- Push it to your analytics tool as a custom dimension.

---

## 📞 Support

For questions or feedback, please open an issue or submit a pull request. Contributions are welcome!
