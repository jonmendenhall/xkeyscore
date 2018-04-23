.class final Lcom/intermedia/model/config/AutoParcel_Config$Builder;
.super Lcom/intermedia/model/config/Config$Builder;
.source "AutoParcel_Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/model/config/AutoParcel_Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private elPromptMs:I

.field private eloiEnabled:Ljava/lang/Boolean;

.field private makeItRain:Lcom/intermedia/model/config/EasterEgg;

.field private minVersion:Lcom/intermedia/model/config/Config$MinVersion;

.field private payouts:Lcom/intermedia/model/config/Payouts;

.field private final set$:Ljava/util/BitSet;

.field private streamConfig:Lcom/intermedia/model/config/StreamConfig;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 158
    invoke-direct {p0}, Lcom/intermedia/model/config/Config$Builder;-><init>()V

    .line 151
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/intermedia/model/config/AutoParcel_Config$Builder;->set$:Ljava/util/BitSet;

    return-void
.end method

.method constructor <init>(Lcom/intermedia/model/config/Config;)V
    .locals 1

    .line 160
    invoke-direct {p0}, Lcom/intermedia/model/config/Config$Builder;-><init>()V

    .line 151
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/intermedia/model/config/AutoParcel_Config$Builder;->set$:Ljava/util/BitSet;

    .line 161
    invoke-virtual {p1}, Lcom/intermedia/model/config/Config;->eloiEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/config/AutoParcel_Config$Builder;->eloiEnabled(Ljava/lang/Boolean;)Lcom/intermedia/model/config/Config$Builder;

    .line 162
    invoke-virtual {p1}, Lcom/intermedia/model/config/Config;->elPromptMs()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/config/AutoParcel_Config$Builder;->elPromptMs(I)Lcom/intermedia/model/config/Config$Builder;

    .line 163
    invoke-virtual {p1}, Lcom/intermedia/model/config/Config;->makeItRain()Lcom/intermedia/model/config/EasterEgg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/config/AutoParcel_Config$Builder;->makeItRain(Lcom/intermedia/model/config/EasterEgg;)Lcom/intermedia/model/config/Config$Builder;

    .line 164
    invoke-virtual {p1}, Lcom/intermedia/model/config/Config;->minVersion()Lcom/intermedia/model/config/Config$MinVersion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/config/AutoParcel_Config$Builder;->minVersion(Lcom/intermedia/model/config/Config$MinVersion;)Lcom/intermedia/model/config/Config$Builder;

    .line 165
    invoke-virtual {p1}, Lcom/intermedia/model/config/Config;->payouts()Lcom/intermedia/model/config/Payouts;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/config/AutoParcel_Config$Builder;->payouts(Lcom/intermedia/model/config/Payouts;)Lcom/intermedia/model/config/Config$Builder;

    .line 166
    invoke-virtual {p1}, Lcom/intermedia/model/config/Config;->streamConfig()Lcom/intermedia/model/config/StreamConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/intermedia/model/config/AutoParcel_Config$Builder;->streamConfig(Lcom/intermedia/model/config/StreamConfig;)Lcom/intermedia/model/config/Config$Builder;

    return-void
.end method


# virtual methods
.method public build()Lcom/intermedia/model/config/Config;
    .locals 10

    .line 200
    iget-object v0, p0, Lcom/intermedia/model/config/AutoParcel_Config$Builder;->set$:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 201
    new-array v0, v0, [Ljava/lang/String;

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 211
    :cond_0
    new-instance v0, Lcom/intermedia/model/config/AutoParcel_Config;

    iget-object v3, p0, Lcom/intermedia/model/config/AutoParcel_Config$Builder;->eloiEnabled:Ljava/lang/Boolean;

    iget v4, p0, Lcom/intermedia/model/config/AutoParcel_Config$Builder;->elPromptMs:I

    iget-object v5, p0, Lcom/intermedia/model/config/AutoParcel_Config$Builder;->makeItRain:Lcom/intermedia/model/config/EasterEgg;

    iget-object v6, p0, Lcom/intermedia/model/config/AutoParcel_Config$Builder;->minVersion:Lcom/intermedia/model/config/Config$MinVersion;

    iget-object v7, p0, Lcom/intermedia/model/config/AutoParcel_Config$Builder;->payouts:Lcom/intermedia/model/config/Payouts;

    iget-object v8, p0, Lcom/intermedia/model/config/AutoParcel_Config$Builder;->streamConfig:Lcom/intermedia/model/config/StreamConfig;

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/intermedia/model/config/AutoParcel_Config;-><init>(Ljava/lang/Boolean;ILcom/intermedia/model/config/EasterEgg;Lcom/intermedia/model/config/Config$MinVersion;Lcom/intermedia/model/config/Payouts;Lcom/intermedia/model/config/StreamConfig;Lcom/intermedia/model/config/AutoParcel_Config$1;)V

    return-object v0
.end method

.method public elPromptMs(I)Lcom/intermedia/model/config/Config$Builder;
    .locals 0

    .line 175
    iput p1, p0, Lcom/intermedia/model/config/AutoParcel_Config$Builder;->elPromptMs:I

    return-object p0
.end method

.method public eloiEnabled(Ljava/lang/Boolean;)Lcom/intermedia/model/config/Config$Builder;
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/intermedia/model/config/AutoParcel_Config$Builder;->eloiEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public makeItRain(Lcom/intermedia/model/config/EasterEgg;)Lcom/intermedia/model/config/Config$Builder;
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/intermedia/model/config/AutoParcel_Config$Builder;->makeItRain:Lcom/intermedia/model/config/EasterEgg;

    return-object p0
.end method

.method public minVersion(Lcom/intermedia/model/config/Config$MinVersion;)Lcom/intermedia/model/config/Config$Builder;
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/intermedia/model/config/AutoParcel_Config$Builder;->minVersion:Lcom/intermedia/model/config/Config$MinVersion;

    return-object p0
.end method

.method public payouts(Lcom/intermedia/model/config/Payouts;)Lcom/intermedia/model/config/Config$Builder;
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/intermedia/model/config/AutoParcel_Config$Builder;->payouts:Lcom/intermedia/model/config/Payouts;

    return-object p0
.end method

.method public streamConfig(Lcom/intermedia/model/config/StreamConfig;)Lcom/intermedia/model/config/Config$Builder;
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/intermedia/model/config/AutoParcel_Config$Builder;->streamConfig:Lcom/intermedia/model/config/StreamConfig;

    return-object p0
.end method
