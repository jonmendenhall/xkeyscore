.class public Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;
.super Ljava/lang/Object;
.source "AutomaticAnalyticsLogger.java"


# static fields
.field private static final INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field private static final TAG:Ljava/lang/String;

.field private static inAppBillingObj:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-class v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .line 52
    sget-object v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->inAppBillingObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 52
    sput-object p0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->inAppBillingObj:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 52
    sget-object v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static isImplicitPurchaseLoggingEnabled()Z
    .locals 3

    .line 199
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-static {v0}, Lcom/facebook/internal/FetchedAppSettingsManager;->getAppSettingsWithoutQuery(Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 205
    :cond_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->getAutoLogAppEventsEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    invoke-virtual {v0}, Lcom/facebook/internal/FetchedAppSettings;->getIAPAutomaticLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static logActivateAppEvent()V
    .locals 4

    .line 61
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 62
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-static {}, Lcom/facebook/FacebookSdk;->getAutoLogAppEventsEnabled()Z

    move-result v2

    const-string v3, "context"

    .line 64
    invoke-static {v0, v3}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    .line 66
    instance-of v2, v0, Landroid/app/Application;

    if-eqz v2, :cond_0

    .line 67
    check-cast v0, Landroid/app/Application;

    invoke-static {v0, v1}, Lcom/facebook/appevents/AppEventsLogger;->activateApp(Landroid/app/Application;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_0
    sget-object v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->TAG:Ljava/lang/String;

    const-string v1, "Automatic logging of basic events will not happen, because FacebookSdk.getApplicationContext() returns object that is not instance of android.app.Application. Make sure you call FacebookSdk.sdkInitialize() from Application class and pass application context."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static logActivityTimeSpentEvent(Ljava/lang/String;J)V
    .locals 3

    .line 81
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 82
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "context"

    .line 83
    invoke-static {v0, v2}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 84
    invoke-static {v1, v2}, Lcom/facebook/internal/FetchedAppSettingsManager;->queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {v1}, Lcom/facebook/internal/FetchedAppSettings;->getAutomaticLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 89
    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    .line 90
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "fb_aa_time_spent_view_name"

    .line 91
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string p0, "fb_aa_time_spent_on_view"

    long-to-double p1, p1

    .line 92
    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static logInAppPurchaseEvent(Landroid/content/Context;ILandroid/content/Intent;)Z
    .locals 2

    if-eqz p2, :cond_2

    .line 102
    invoke-static {}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->isImplicitPurchaseLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "INAPP_PURCHASE_DATA"

    .line 105
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 108
    new-instance p1, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$1;

    invoke-direct {p1, p0, p2}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 190
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.android.vending"

    .line 192
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    invoke-virtual {p0, p2, p1, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
