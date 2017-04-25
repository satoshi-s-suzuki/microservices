
![](images/100/Picture100-lab.png)  
Update: March 31, 2017

## Introduction

このハンズオンラボは**Oracle Public Cloud DevOps Cloud Native Microservices workshop**の一つ目のラボです。このラボではソフトウェア開発ライフサイクル(Software Development Lifecycle (SDLC))の流れを複数のマイクロサービスを作成・利用するクラウドネイティブプロジェクト通して理解していきます。

ハンズオンラボでは一人のユーザとしてログインし作業を進めますが、下記3人のユーザの作業を行います。このハンズオンでは**Oracle Developer Cloud Service**と**Oracle Application Container Cloud Service**を使用し、アプリケーション開発を行います。

- **プロジェクトマネージャ**<br>
  プロジェクトの作成、行なうタスクの追加、開発者へのタスクのアサインを行い、スプリントを開始します。

- **Java開発者**<br>
  twitterのデータ取得・フィルタリングが出来るtwitterフィードサービスの開発を行います。

- **JavaScript開発者**<br>
  twitterデータ分析のためのtwitterマーケティング画面を作成します。



***To log issues***, click here to go to the [github oracle](https://github.com/oracle/cloud-native-devops-workshop/issues/new) repository issue submission form.

## Objectives
- Create Initial Project
    - Add Users to Project
- Create Product Issues
    - Create Issues for Twitter Feed Microservice
    - Create Issues for Twitter Feed Marketing UI
- Create Agile Board and initial Sprint
- Add Issues to Sprint

## Required Artifacts
- The following lab requires an Oracle Public Cloud account that will be supplied by your instructor.


# Create Twitter Feed Marketing Project

## Create Developer Cloud Service Project

### **STEP 1**: Login to your Oracle Cloud Account
- From any browser, go to the URL:
    `https://cloud.oracle.com`

- click **Sign In** in the upper right hand corner of the browser

    ![](images/100/Picture100-1.png)

- **IMPORTANT** - Under my services, select from the drop down list the correct data center and click on **My Services**. If you are unsure of the data center you should select, and this is an in-person training event, ***ask your instructor*** which **Region** to select from the drop down list. If you received your account through an Oracle Trial, your Trial confirmation email should provide a URL that will pre-select the region for you.

    ![](images/100/Picture100-2.png)

- Enter your identity domain and click **Go**.

    ![](images/100/Picture100-3.png)

- Once your Identity Domain is set, enter your User Name and Password and click **Sign In**

  **NOTE:** For this lab you will assume the role of Project Manager ***Lisa Jones***. Although you are assuming the identity of Lisa Jones, you will log into the account using the **username** provided to you by your instructor, given to you by your corporation, or supplied to you as part of an Oracle Trial. As you progress through the workshop, you will remain logged in as a single user, but you will make “logical User" changes from Lisa Jones the Project Manager to other personas.

    ![](images/lisa.png)

    ![](images/100/Picture100-3.5.png)

- You will be presented with a Dashboard displaying the various cloud services available to this account.

    ![](images/100/Picture100-4.png)

- **Click** on the **Customize Dashboard** to add services to the dashboard. Services are added by selecting **Show.** For this workshop, you will want to ensure that you are showing the **Application Container, Developer and Storage** cloud services.

    ![](images/100/Picture100-5.png)

### **STEP 2**: OPTIONAL Check/Set Storage Replication Policy

***Skip this step if any of the following are true:***

- You are at an Oracle Sponsored event, and your **Instructor provided you with an Account**. These accounts already have the Policy set.

- You signed up for your **personal Trial Account**, and you completed the **Trial Account Student Guide**, during which you already set your replication policy.

***If none of the above are true***, you will need to follow these steps to set your Storage Replication Policy:

- Click on the **Storage** Cloud Service

    ![](images/100/Picture-01.png)

- Click on the **Open Service Console** icon at the top of the screen.

    ![](images/100/Picture-01.5.png)

- If the follow dialog is displayed, care must be taking when setting your replication policy, because it cannot be changed. Take the default and click on the **Set Policy** button. If the message is not displayed, your replication policy has already been set, and your Cloud Account is ready for the Workshop.

    ![](images/100/Picture-02.5.png)

- Click on the Browser Back Button, then click on the **Dashboard** button to return to the main dashboard.

    ![](images/100/Picture-04.png)

### **STEP 3**: Login to Developer Cloud Service

Oracle Developer Cloud Service provides a complete development platform that streamlines team development processes and automates software delivery. The integrated platform includes an issue tracking system, agile development dashboards, code versioning and review platform, continuous integration and delivery automation, as well as team collaboration features such as wikis and live activity stream. With a rich web based dashboard and integration with popular development tools, Oracle Developer Cloud Service helps deliver better applications faster.

- From the Cloud UI dashboard click on the **Developer** service. In our example, the Developer Cloud Service is named **developer99019**.

    ![](images/100/Picture100-6.png)

- The Service Details page gives you a quick glance of the service status overview.

    ![](images/100/Picture100-7.png)

- Click **Open Service Console** for the Oracle Developer Cloud Service. The Service Console will then list all projects for which you are currently a member.

    ![](images/100/Picture100-7.5.png)

### **STEP 4**: Create Developer Cloud Service Project

- Click **New Project** to start the project create wizard.

    ![](images/100/Picture100-8.png)

- On Details screen enter the following data and click on **Next**.

    **Name:** `Twitter Feed Marketing Project`

    **Description:** `Project to gather and analyze twitter data`

    **Note:** A Private project will only be seen by you. A Shared project will be seen by all Developer Cloud users. In either case, users need to be added to a project in order to interact with the project.

    ![](images/100/Picture100-9.png)

- Leave default template set to **Empty Project** and click **Next**

    ![](images/100/Picture100-10.png)

- Select your **Wiki Markup** preference to **MARKDOWN** and click **Finish**.

    ![](images/100/Picture100-11.png)

- The Project Creation will take about 1 minute.

    ![](images/100/Picture100-12.png)

- You now have a new project, in which you can manage your software development.

    ![](images/100/Picture100-13.png)



# Create Product Issues

## Create Issues for Twitter Feed Microservice

### **STEP 5**: Create Issue for the initial GIT Repository Creation

In this step you are still assuming the identity of the Project Manager, ***Lisa Jones***.

![](images/lisa.png)

- Click **Issues** on left hand navigation panel to display the Track Issues page.

    ![](images/100/Picture100-16.png)

- Click **New Issue**. Enter the following data in the New Issue page and click **Create Issue**.

    **Note:** Throughout the lab you will assign your own account as the “physical” owner of the issue, but for the sake of this workshop, **Bala Gupta** will be the “logical” owner of the following issues.

    ![](images/bala.png)

    **Summary:**
    `Create Initial GIT Repository for Twitter Feed Service`

    **Description:**
    `Create Initial GIT Repository for Twitter Feed Service`

    **Type:** `Task`

    **Owner:** `Select your account provided in the dropdown [Logical Owner = Bala Gupta]`

    **Story Points:** `1`

    Note: Story point is an arbitrary measure used by Scrum teams. They are used to measure the effort required to implement a story. This [Site](https://agilefaq.wordpress.com/2007/11/13/what-is-a-story-point/) will provide more information.

    ![](images/100/Picture100-17.png)

### **STEP 6**: Create Issue for Update Twitter Credentials

- Click **New Issue**. Enter the following data in the New Issue page and click **Create Issue**.

    ![](images/bala.png)

    **Summary:** `Create Filter on Twitter Feed`

    **Description:** `Create Filter to allow user to supply text to reduce the amount of data returned by the Twitter feed`

    **Type:** `Feature`

    **Owner:** `Select your account provided in the dropdown [Logical Owner: Bala Gupta]`

    **Story Points:** `2`

    ![](images/100/Picture100-18.png)

### **STEP 7**: Create Issue for initial GIT Repository creation

- Click **New Issue**. Enter the following data in the New Issue page and click **Create Issue**. Note: The next two issues will logically be owned by John Dunbar.

    ![](images/john.png)

    **Summary:** `Create Initial GIT Repository for Twitter Feed Marketing UI`

    **Description:** `Create Initial GIT Repository for Twitter Feed Marketing UI`

    **Type:** `Task`

    **Owner:** `Select your account provided in the dropdown [Logical Owner: John Dunbar]`

    **Story Points:** `1`

    ![](images/100/Picture100-19.png)

### **STEP 8**: Create Issue for Displaying Twitter Feed

- Click **New Issue**. Enter the following data in the New Issue page and click **Create Issue**.

    ![](images/john.png)

    **Summary:** `Display Twitter Feed in Table Format`

    **Description:** `Display Twitter Feed in Table Format`

    **Type:** `Feature`

    **Owner:** `Select account provided in the dropdown [Logical Owner: John Dunbar]`

    **Story Points:** `2`

    ![](images/100/Picture100-20.png)

- Click the back arrow ![](images/100/Picture100-21.png) on the **left side** of the window, or click on the **Issues** menu option to view all newly created issues.

    ![](images/100/Picture100-22.png)

# Create Agile Board

## Create Agile Board and Initial Sprint

### Developer Cloud Service Agile Page Overview

Before you start using the Agile methodology in Oracle Developer Cloud Service, it is important that you know the following key components of the Agile page.

- **Board** – A Board is used to display and update issues of the project. When you create a Board, you associate it with an Issue Query. The Board shows Issues returned by the Query.
You can either use a Board created by a team member, or create your own Board. You can create as many Boards as you like.
- **Sprint** – A Sprint is a short duration (usually, a week or two) during which your team members try to implement a product component.
You add the product component related issues to a Sprint. When you start working on a product component, you start (or activate) the related Sprints. To update issues using a Sprint, you must first activate the Sprint and add the Sprint to the Active Sprints view.
- **Backlog view** – Lists all Issues returned by the Board’s Query. The view also displays all active and inactive Sprints of the Board, and the sprints from other Boards that contain Issues matching the Board’s Query.
Each Sprint lists issues that are added to it. The Backlog section (the last section of the Backlog page) lists all open issues that are not part of any Sprint yet. The Backlog view does not show the resolved and closed Issues.
- **Active Sprints view** – Lists all active Sprints of the Board and enables you to update an Issue status simply by dragging and dropping it to the respective status columns.
- **Reports view** – select the Burndown Chart tab to display the amount of work left to do in a Sprint or use the Sprint Report tab to list open and completed Issues of a Sprint.

### **STEP 9**: Create Agile Board

- Click **Agile** on the Left Side Menu to display a page listing all existing Boards

    ![](images/100/Picture100-23.png)

- Click **New Board** and enter the following data. When done click **Create**.

  **Name:** `Microservices`

  **Estimation:** `Story Points`

    ![](images/100/Picture100-24.png)

### **STEP 10**: Create Sprint
- We will now create our first Sprint. Click **New Sprint**. Enter the following data and click **OK.**

    **Name:** `Sprint 1 - Initial Development`

    **Story Points:** `6`

    ![](images/100/Picture100-25.png)

### **STEP 11**:	Add Backlog Issues to Sprint

- Next, we want to add the backlog issues to the newly created sprint. **Drag and drop** the **4 issues** one at a time upward onto the **Sprint 1** section. This will add the issues to the sprint.

    ![](images/100/Picture100-26.png)

    ![](images/100/Picture100-27.png)

## Customize Agile Board

### **STEP 12**: Customize Board

In the following step you will customize an Agile Board, and add a new Progress State. If you desire more information about States and Conditions, this [Link](http://www.oracle.com/webfolder/technetwork/tutorials/obe/cloud/developer/AgileDevelopment/AgileDevelopment.html) will provide a tutorial:

- Now we will show you how you can customize your board. In the right hand side click **Board -> Configure**

    ![](images/100/Picture100-28.png)

  **Note**: Before we create a new progress state, we want to un-assign some of the conditions that will be used in the new state. You can’t add new conditions or remove conditions, however, you can redefine progress states to suit your project’s needs and move conditions from one state to another. A large number of conditions are assigned to the Completed state by default.

- Click on **Progress States** then click **Completed** state. In the lower left panel of the window, scroll down the conditions and select all the **RESOLVED conditions**.  Click ![](images/100/PictureGreater.png) to move them over to Unassigned Conditions panel

    ![](images/100/Picture100-29.png)

- Click **New Progress State**.  Change **Name** to **Verify Code**. We will use this new State for performing QA and Testing.

    ![](images/100/Picture100-30.png)

- Highlight all the **RESOLVED** unassigned conditions, and click ![](images/100/PictureLess.png) to move them over to the Conditions column.

    ![](images/100/Picture100-31.png)

- With **Verify Code** highlighted, click ![](images/100/PictureUpArrow.png) to move **Verify Code** above the Completed Process State. This is an important step, since it will dictate the sequence in which tasks  progress.  

    ![](images/100/Picture100-32.png)

- Click **Save** to persist change.

    ![](images/100/Picture100-33.png)

### **STEP 13**: Start Sprint

- Click the **Start Sprint** button.

- Leave the defaults and click **Start**

    ![](images/100/Picture100-34.png)

- Now click on **Active Sprints** to view the Sprint Dashboard

    ![](images/100/Picture100-35.png)

- Click on the **Reports** button to view the Burndown and Sprint reports.

    ![](images/100/Picture100-36.png)

- You are now ready to move to the next lab.
