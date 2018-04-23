.class public final Lcom/facebook/internal/FetchedAppSettingsManager;
.super Ljava/lang/Object;
.source "FetchedAppSettingsManager.java"


# static fields
.field private static final APPLICATION_FIELDS:Ljava/lang/String; = "fields"

.field private static final APP_SETTINGS_PREFS_KEY_FORMAT:Ljava/lang/String; = "com.facebook.internal.APP_SETTINGS.%s"

.field private static final APP_SETTINGS_PREFS_STORE:Ljava/lang/String; = "com.facebook.internal.preferences.APP_SETTINGS"

.field private static final APP_SETTING_ANDROID_SDK_ERROR_CATEGORIES:Ljava/lang/String; = "android_sdk_error_categories"

.field private static final APP_SETTING_APP_EVENTS_FEATURE_BITMASK:Ljava/lang/String; = "app_events_feature_bitmask"

.field private static final APP_SETTING_APP_EVENTS_SESSION_TIMEOUT:Ljava/lang/String; = "app_events_session_timeout"

.field private static final APP_SETTING_CUSTOM_TABS_ENABLED:Ljava/lang/String; = "gdpv4_chrome_custom_tabs_enabled"

.field private static final APP_SETTING_DIALOG_CONFIGS:Ljava/lang/String; = "android_dialog_configs"

.field private static final APP_SETTING_FIELDS:[Ljava/lang/String;

.field private static final APP_SETTING_NUX_CONTENT:Ljava/lang/String; = "gdpv4_nux_content"

.field private static final APP_SETTING_NUX_ENABLED:Ljava/lang/String; = "gdpv4_nux_enabled"

.field private static final APP_SETTING_SMART_LOGIN_OPTIONS:Ljava/lang/String; = "seamless_login"

.field private static final APP_SETTING_SUPPORTS_IMPLICIT_SDK_LOGGING:Ljava/lang/String; = "supports_implicit_sdk_logging"

.field private static final AUTOMATIC_LOGGING_ENABLED_BITMASK_FIELD:I = 0x8

.field private static final IAP_AUTOMATIC_LOGGING_ENABLED_BITMASK_FIELD:I = 0x10

.field private static final SDK_UPDATE_MESSAGE:Ljava/lang/String; = "sdk_update_message"

.field private static final SMART_LOGIN_BOOKMARK_ICON_URL:Ljava/lang/String; = "smart_login_bookmark_icon_url"

.field private static final SMART_LOGIN_MENU_ICON_URL:Ljava/lang/String; = "smart_login_menu_icon_url"

.field private static final TAG:Ljava/lang/String;

.field private static fetchedAppSettings:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/FetchedAppSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static loadingSettings:Ljava/util/concurrent/atomic/AtomicBoolean; = null

.field private static printedSDKUpdatedMessage:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 53
    const-class v0, Lcom/facebook/internal/FetchedAppSettingsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->TAG:Ljava/lang/String;

    const-string v1, "supports_implicit_sdk_logging"

    const-string v2, "gdpv4_nux_content"

    const-string v3, "gdpv4_nux_enabled"

    const-string v4, "gdpv4_chrome_custom_tabs_enabled"

    const-string v5, "android_dialog_configs"

    const-string v6, "android_sdk_error_categories"

    const-string v7, "app_events_session_timeout"

    const-string v8, "app_events_feature_bitmask"

    const-string v9, "seamless_login"

    const-string v10, "smart_login_bookmark_icon_url"

    const-string v11, "smart_login_menu_icon_url"

    .line 81
    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->APP_SETTING_FIELDS:[Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettings:Ljava/util/Map;

    .line 98
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->loadingSettings:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings;
    .locals 0

    .line 52
    invoke-static {p0, p1}, Lcom/facebook/internal/FetchedAppSettingsManager;->parseAppSettingsFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    .line 52
    invoke-static {p0}, Lcom/facebook/internal/FetchedAppSettingsManager;->getAppSettingsQueryResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 52
    sget-boolean v0, Lcom/facebook/internal/FetchedAppSettingsManager;->printedSDKUpdatedMessage:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    .line 52
    sput-boolean p0, Lcom/facebook/internal/FetchedAppSettingsManager;->printedSDKUpdatedMessage:Z

    return p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 52
    sget-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/Context;)V
    .locals 0

    .line 52
    invoke-static {p0}, Lcom/facebook/internal/FetchedAppSettingsManager;->startInAppPurchaseAutoLogging(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 52
    sget-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->loadingSettings:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static getAppSettingsQueryResponse(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    .line 231
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 232
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/facebook/internal/FetchedAppSettingsManager;->APP_SETTING_FIELDS:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "fields"

    const-string v3, ","

    .line 238
    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 240
    invoke-static {v1, p0, v1}, Lcom/facebook/GraphRequest;->newGraphPathRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object p0

    const/4 v1, 0x1

    .line 241
    invoke-virtual {p0, v1}, Lcom/facebook/GraphRequest;->setSkipClientToken(Z)V

    .line 242
    invoke-virtual {p0, v0}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 244
    invoke-virtual {p0}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static getAppSettingsWithoutQuery(Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings;
    .locals 1

    if-eqz p0, :cond_0

    .line 168
    sget-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettings:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/internal/FetchedAppSettings;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static loadAppSettingsAsync()V
    .locals 6

    .line 103
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 104
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 105
    sget-object v2, Lcom/facebook/internal/FetchedAppSettingsManager;->loadingSettings:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    .line 106
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettings:Ljava/util/Map;

    .line 107
    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "com.facebook.internal.APP_SETTINGS.%s"

    .line 112
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lcom/facebook/internal/FetchedAppSettingsManager$1;

    invoke-direct {v4, v0, v2, v1}, Lcom/facebook/internal/FetchedAppSettingsManager$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private static parseAppSettingsFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings;
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "android_sdk_error_categories"

    .line 193
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_0

    .line 196
    invoke-static {}, Lcom/facebook/internal/FacebookRequestErrorClassification;->getDefaultErrorClassification()Lcom/facebook/internal/FacebookRequestErrorClassification;

    move-result-object v1

    :goto_0
    move-object v11, v1

    goto :goto_1

    .line 197
    :cond_0
    invoke-static {v1}, Lcom/facebook/internal/FacebookRequestErrorClassification;->createFromJSON(Lorg/json/JSONArray;)Lcom/facebook/internal/FacebookRequestErrorClassification;

    move-result-object v1

    goto :goto_0

    :goto_1
    const-string v1, "app_events_feature_bitmask"

    const/4 v2, 0x0

    .line 200
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    and-int/lit8 v3, v1, 0x8

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    move v10, v4

    goto :goto_2

    :cond_1
    move v10, v2

    :goto_2
    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2

    move v14, v4

    goto :goto_3

    :cond_2
    move v14, v2

    .line 205
    :goto_3
    new-instance v1, Lcom/facebook/internal/FetchedAppSettings;

    const-string v3, "supports_implicit_sdk_logging"

    .line 206
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "gdpv4_nux_content"

    const-string v5, ""

    .line 207
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "gdpv4_nux_enabled"

    .line 208
    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "gdpv4_chrome_custom_tabs_enabled"

    .line 209
    invoke-virtual {v0, v6, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v2, "app_events_session_timeout"

    .line 212
    invoke-static {}, Lcom/facebook/appevents/internal/Constants;->getDefaultAppEventsSessionTimeoutInSeconds()I

    move-result v7

    .line 210
    invoke-virtual {v0, v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-string v2, "seamless_login"

    .line 213
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/facebook/internal/SmartLoginOption;->parseOptions(J)Ljava/util/EnumSet;

    move-result-object v8

    const-string v2, "android_dialog_configs"

    .line 214
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/internal/FetchedAppSettingsManager;->parseDialogConfigurations(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v9

    const-string v2, "smart_login_bookmark_icon_url"

    .line 217
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v2, "smart_login_menu_icon_url"

    .line 218
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v2, "sdk_update_message"

    .line 220
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v2, v1

    invoke-direct/range {v2 .. v15}, Lcom/facebook/internal/FetchedAppSettings;-><init>(ZLjava/lang/String;ZZILjava/util/EnumSet;Ljava/util/Map;ZLcom/facebook/internal/FacebookRequestErrorClassification;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 223
    sget-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettings:Ljava/util/Map;

    move-object/from16 v2, p0

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method private static parseDialogConfigurations(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;",
            ">;>;"
        }
    .end annotation

    .line 249
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_2

    const-string v1, "data"

    .line 253
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v1, 0x0

    .line 255
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 258
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 257
    invoke-static {v2}, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->parseDialogConfig(Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 263
    :cond_0
    invoke-virtual {v2}, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->getDialogName()Ljava/lang/String;

    move-result-object v3

    .line 265
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_1

    .line 267
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 268
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :cond_1
    invoke-virtual {v2}, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->getFeatureName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/FetchedAppSettings;
    .locals 0

    if-nez p1, :cond_0

    .line 177
    sget-object p1, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettings:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 178
    sget-object p1, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettings:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/internal/FetchedAppSettings;

    return-object p0

    .line 181
    :cond_0
    invoke-static {p0}, Lcom/facebook/internal/FetchedAppSettingsManager;->getAppSettingsQueryResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 186
    :cond_1
    invoke-static {p0, p1}, Lcom/facebook/internal/FetchedAppSettingsManager;->parseAppSettingsFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object p0

    return-object p0
.end method

.method private static startInAppPurchaseAutoLogging(Landroid/content/Context;)V
    .locals 2

    .line 280
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->InAppPurchase:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 281
    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    new-instance v1, Lcom/facebook/internal/FetchedAppSettingsManager$2;

    invoke-direct {v1, p0}, Lcom/facebook/internal/FetchedAppSettingsManager$2;-><init>(Landroid/content/Context;)V

    .line 280
    invoke-static {v0, v1}, Lcom/facebook/internal/CallbackManagerImpl;->registerStaticCallback(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V

    return-void
.end method
