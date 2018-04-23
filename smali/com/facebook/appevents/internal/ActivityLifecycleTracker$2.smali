.class final Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->onActivityCreated(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activityName:Ljava/lang/String;

.field final synthetic val$applicationContext:Landroid/content/Context;

.field final synthetic val$currentTime:J

.field final synthetic val$sourceApplicationInfo:Lcom/facebook/appevents/internal/SourceApplicationInfo;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;JLcom/facebook/appevents/internal/SourceApplicationInfo;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;->val$applicationContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;->val$activityName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;->val$currentTime:J

    iput-object p5, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;->val$sourceApplicationInfo:Lcom/facebook/appevents/internal/SourceApplicationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 135
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$200()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 137
    invoke-static {}, Lcom/facebook/appevents/internal/SessionInfo;->getStoredSessionInfo()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;->val$applicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;->val$activityName:Ljava/lang/String;

    .line 143
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$300()Ljava/lang/String;

    move-result-object v3

    .line 139
    invoke-static {v1, v2, v0, v3}, Lcom/facebook/appevents/internal/SessionLogger;->logDeactivateApp(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/appevents/internal/SessionInfo;Ljava/lang/String;)V

    .line 146
    :cond_0
    new-instance v0, Lcom/facebook/appevents/internal/SessionInfo;

    iget-wide v1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;->val$currentTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/appevents/internal/SessionInfo;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-static {v0}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$202(Lcom/facebook/appevents/internal/SessionInfo;)Lcom/facebook/appevents/internal/SessionInfo;

    .line 148
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$200()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;->val$sourceApplicationInfo:Lcom/facebook/appevents/internal/SourceApplicationInfo;

    invoke-virtual {v0, v1}, Lcom/facebook/appevents/internal/SessionInfo;->setSourceApplicationInfo(Lcom/facebook/appevents/internal/SourceApplicationInfo;)V

    .line 149
    iget-object v0, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;->val$applicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;->val$activityName:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;->val$sourceApplicationInfo:Lcom/facebook/appevents/internal/SourceApplicationInfo;

    .line 153
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$300()Ljava/lang/String;

    move-result-object v3

    .line 149
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/appevents/internal/SessionLogger;->logActivateApp(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/appevents/internal/SourceApplicationInfo;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
