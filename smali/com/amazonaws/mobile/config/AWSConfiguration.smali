.class public Lcom/amazonaws/mobile/config/AWSConfiguration;
.super Ljava/lang/Object;
.source "AWSConfiguration.java"


# static fields
.field private static final DEFAULT:Ljava/lang/String; = "Default"

.field private static final DEFAULT_IDENTIFIER:Ljava/lang/String; = "awsconfiguration"


# instance fields
.field private configName:Ljava/lang/String;

.field private mJSONObject:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 45
    invoke-static {p1}, Lcom/amazonaws/mobile/config/AWSConfiguration;->getConfigResourceId(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/mobile/config/AWSConfiguration;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "Default"

    .line 68
    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/mobile/config/AWSConfiguration;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p3, p0, Lcom/amazonaws/mobile/config/AWSConfiguration;->configName:Ljava/lang/String;

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/mobile/config/AWSConfiguration;->readInputJson(Landroid/content/Context;I)V

    return-void
.end method

.method private static getConfigResourceId(Landroid/content/Context;)I
    .locals 3

    .line 50
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "awsconfiguration"

    const-string v2, "raw"

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 50
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 53
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to read awsconfiguration.json please check that it is correctly formed."

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private readInputJson(Landroid/content/Context;I)V
    .locals 1

    .line 88
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    .line 90
    new-instance p2, Ljava/util/Scanner;

    invoke-direct {p2, p1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    :goto_0
    invoke-virtual {p2}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p2}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p2}, Ljava/util/Scanner;->close()V

    .line 97
    new-instance p2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/amazonaws/mobile/config/AWSConfiguration;->mJSONObject:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 99
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Failed to read awsconfiguration.json please check that it is correctly formed."

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public getConfiguration()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/amazonaws/mobile/config/AWSConfiguration;->configName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 2

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobile/config/AWSConfiguration;->mJSONObject:Lorg/json/JSONObject;

    const-string v1, "UserAgent"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public optJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobile/config/AWSConfiguration;->mJSONObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 137
    iget-object v0, p0, Lcom/amazonaws/mobile/config/AWSConfiguration;->configName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/amazonaws/mobile/config/AWSConfiguration;->configName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 141
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setConfiguration(Ljava/lang/String;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/amazonaws/mobile/config/AWSConfiguration;->configName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/amazonaws/mobile/config/AWSConfiguration;->mJSONObject:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
