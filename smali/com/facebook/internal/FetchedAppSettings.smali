.class public final Lcom/facebook/internal/FetchedAppSettings;
.super Ljava/lang/Object;
.source "FetchedAppSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;
    }
.end annotation


# instance fields
.field private IAPAutomaticLoggingEnabled:Z

.field private automaticLoggingEnabled:Z

.field private customTabsEnabled:Z

.field private dialogConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;",
            ">;>;"
        }
    .end annotation
.end field

.field private errorClassification:Lcom/facebook/internal/FacebookRequestErrorClassification;

.field private nuxContent:Ljava/lang/String;

.field private nuxEnabled:Z

.field private sdkUpdateMessage:Ljava/lang/String;

.field private sessionTimeoutInSeconds:I

.field private smartLoginBookmarkIconURL:Ljava/lang/String;

.field private smartLoginMenuIconURL:Ljava/lang/String;

.field private smartLoginOptions:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/facebook/internal/SmartLoginOption;",
            ">;"
        }
    .end annotation
.end field

.field private supportsImplicitLogging:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;ZZILjava/util/EnumSet;Ljava/util/Map;ZLcom/facebook/internal/FacebookRequestErrorClassification;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "ZZI",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/internal/SmartLoginOption;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;",
            ">;>;Z",
            "Lcom/facebook/internal/FacebookRequestErrorClassification;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-boolean p1, p0, Lcom/facebook/internal/FetchedAppSettings;->supportsImplicitLogging:Z

    .line 66
    iput-object p2, p0, Lcom/facebook/internal/FetchedAppSettings;->nuxContent:Ljava/lang/String;

    .line 67
    iput-boolean p3, p0, Lcom/facebook/internal/FetchedAppSettings;->nuxEnabled:Z

    .line 68
    iput-boolean p4, p0, Lcom/facebook/internal/FetchedAppSettings;->customTabsEnabled:Z

    .line 69
    iput-object p7, p0, Lcom/facebook/internal/FetchedAppSettings;->dialogConfigMap:Ljava/util/Map;

    .line 70
    iput-object p9, p0, Lcom/facebook/internal/FetchedAppSettings;->errorClassification:Lcom/facebook/internal/FacebookRequestErrorClassification;

    .line 71
    iput p5, p0, Lcom/facebook/internal/FetchedAppSettings;->sessionTimeoutInSeconds:I

    .line 72
    iput-boolean p8, p0, Lcom/facebook/internal/FetchedAppSettings;->automaticLoggingEnabled:Z

    .line 73
    iput-object p6, p0, Lcom/facebook/internal/FetchedAppSettings;->smartLoginOptions:Ljava/util/EnumSet;

    .line 74
    iput-object p10, p0, Lcom/facebook/internal/FetchedAppSettings;->smartLoginBookmarkIconURL:Ljava/lang/String;

    .line 75
    iput-object p11, p0, Lcom/facebook/internal/FetchedAppSettings;->smartLoginMenuIconURL:Ljava/lang/String;

    .line 76
    iput-boolean p12, p0, Lcom/facebook/internal/FetchedAppSettings;->IAPAutomaticLoggingEnabled:Z

    .line 77
    iput-object p13, p0, Lcom/facebook/internal/FetchedAppSettings;->sdkUpdateMessage:Ljava/lang/String;

    return-void
.end method

.method public static getDialogFeatureConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;
    .locals 2

    .line 234
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    invoke-static {p0}, Lcom/facebook/internal/FetchedAppSettingsManager;->getAppSettingsWithoutQuery(Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 242
    invoke-virtual {p0}, Lcom/facebook/internal/FetchedAppSettings;->getDialogConfigurations()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_1

    .line 244
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;

    return-object p0

    :cond_1
    return-object v1

    :cond_2
    :goto_0
    return-object v1
.end method


# virtual methods
.method public getAutomaticLoggingEnabled()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/facebook/internal/FetchedAppSettings;->automaticLoggingEnabled:Z

    return v0
.end method

.method public getCustomTabsEnabled()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/facebook/internal/FetchedAppSettings;->customTabsEnabled:Z

    return v0
.end method

.method public getDialogConfigurations()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;",
            ">;>;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->dialogConfigMap:Ljava/util/Map;

    return-object v0
.end method

.method public getErrorClassification()Lcom/facebook/internal/FacebookRequestErrorClassification;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->errorClassification:Lcom/facebook/internal/FacebookRequestErrorClassification;

    return-object v0
.end method

.method public getIAPAutomaticLoggingEnabled()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/facebook/internal/FetchedAppSettings;->IAPAutomaticLoggingEnabled:Z

    return v0
.end method

.method public getNuxContent()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->nuxContent:Ljava/lang/String;

    return-object v0
.end method

.method public getNuxEnabled()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/facebook/internal/FetchedAppSettings;->nuxEnabled:Z

    return v0
.end method

.method public getSdkUpdateMessage()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->sdkUpdateMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionTimeoutInSeconds()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/facebook/internal/FetchedAppSettings;->sessionTimeoutInSeconds:I

    return v0
.end method

.method public getSmartLoginBookmarkIconURL()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->smartLoginBookmarkIconURL:Ljava/lang/String;

    return-object v0
.end method

.method public getSmartLoginMenuIconURL()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->smartLoginMenuIconURL:Ljava/lang/String;

    return-object v0
.end method

.method public getSmartLoginOptions()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/internal/SmartLoginOption;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings;->smartLoginOptions:Ljava/util/EnumSet;

    return-object v0
.end method

.method public supportsImplicitLogging()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcom/facebook/internal/FetchedAppSettings;->supportsImplicitLogging:Z

    return v0
.end method
