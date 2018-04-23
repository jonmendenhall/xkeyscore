.class final Lcom/intermedia/model/config/AutoParcel_Config;
.super Lcom/intermedia/model/config/Config;
.source "AutoParcel_Config.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/model/config/AutoParcel_Config$Builder;
    }
.end annotation


# static fields
.field private static final CL:Ljava/lang/ClassLoader;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/intermedia/model/config/AutoParcel_Config;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final elPromptMs:I

.field private final eloiEnabled:Ljava/lang/Boolean;

.field private final makeItRain:Lcom/intermedia/model/config/EasterEgg;

.field private final minVersion:Lcom/intermedia/model/config/Config$MinVersion;

.field private final payouts:Lcom/intermedia/model/config/Payouts;

.field private final streamConfig:Lcom/intermedia/model/config/StreamConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 113
    new-instance v0, Lcom/intermedia/model/config/AutoParcel_Config$1;

    invoke-direct {v0}, Lcom/intermedia/model/config/AutoParcel_Config$1;-><init>()V

    sput-object v0, Lcom/intermedia/model/config/AutoParcel_Config;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 124
    const-class v0, Lcom/intermedia/model/config/AutoParcel_Config;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/intermedia/model/config/AutoParcel_Config;->CL:Ljava/lang/ClassLoader;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 8

    .line 127
    sget-object v0, Lcom/intermedia/model/config/AutoParcel_Config;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Boolean;

    sget-object v0, Lcom/intermedia/model/config/AutoParcel_Config;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v0, Lcom/intermedia/model/config/AutoParcel_Config;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/intermedia/model/config/EasterEgg;

    sget-object v0, Lcom/intermedia/model/config/AutoParcel_Config;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/intermedia/model/config/Config$MinVersion;

    sget-object v0, Lcom/intermedia/model/config/AutoParcel_Config;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/intermedia/model/config/Payouts;

    sget-object v0, Lcom/intermedia/model/config/AutoParcel_Config;->CL:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lcom/intermedia/model/config/StreamConfig;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/intermedia/model/config/AutoParcel_Config;-><init>(Ljava/lang/Boolean;ILcom/intermedia/model/config/EasterEgg;Lcom/intermedia/model/config/Config$MinVersion;Lcom/intermedia/model/config/Payouts;Lcom/intermedia/model/config/StreamConfig;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/intermedia/model/config/AutoParcel_Config$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/intermedia/model/config/AutoParcel_Config;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Boolean;ILcom/intermedia/model/config/EasterEgg;Lcom/intermedia/model/config/Config$MinVersion;Lcom/intermedia/model/config/Payouts;Lcom/intermedia/model/config/StreamConfig;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/intermedia/model/config/Config;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/intermedia/model/config/AutoParcel_Config;->eloiEnabled:Ljava/lang/Boolean;

    .line 23
    iput p2, p0, Lcom/intermedia/model/config/AutoParcel_Config;->elPromptMs:I

    .line 24
    iput-object p3, p0, Lcom/intermedia/model/config/AutoParcel_Config;->makeItRain:Lcom/intermedia/model/config/EasterEgg;

    .line 25
    iput-object p4, p0, Lcom/intermedia/model/config/AutoParcel_Config;->minVersion:Lcom/intermedia/model/config/Config$MinVersion;

    .line 26
    iput-object p5, p0, Lcom/intermedia/model/config/AutoParcel_Config;->payouts:Lcom/intermedia/model/config/Payouts;

    .line 27
    iput-object p6, p0, Lcom/intermedia/model/config/AutoParcel_Config;->streamConfig:Lcom/intermedia/model/config/StreamConfig;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Boolean;ILcom/intermedia/model/config/EasterEgg;Lcom/intermedia/model/config/Config$MinVersion;Lcom/intermedia/model/config/Payouts;Lcom/intermedia/model/config/StreamConfig;Lcom/intermedia/model/config/AutoParcel_Config$1;)V
    .locals 0

    .line 6
    invoke-direct/range {p0 .. p6}, Lcom/intermedia/model/config/AutoParcel_Config;-><init>(Ljava/lang/Boolean;ILcom/intermedia/model/config/EasterEgg;Lcom/intermedia/model/config/Config$MinVersion;Lcom/intermedia/model/config/Payouts;Lcom/intermedia/model/config/StreamConfig;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public elPromptMs()I
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 39
    iget v0, p0, Lcom/intermedia/model/config/AutoParcel_Config;->elPromptMs:I

    return v0
.end method

.method public eloiEnabled()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/intermedia/model/config/AutoParcel_Config;->eloiEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 83
    :cond_0
    instance-of v1, p1, Lcom/intermedia/model/config/Config;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 84
    check-cast p1, Lcom/intermedia/model/config/Config;

    .line 85
    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_Config;->eloiEnabled:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/intermedia/model/config/Config;->eloiEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_Config;->eloiEnabled:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/intermedia/model/config/Config;->eloiEnabled()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_0
    iget v1, p0, Lcom/intermedia/model/config/AutoParcel_Config;->elPromptMs:I

    .line 86
    invoke-virtual {p1}, Lcom/intermedia/model/config/Config;->elPromptMs()I

    move-result v3

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_Config;->makeItRain:Lcom/intermedia/model/config/EasterEgg;

    if-nez v1, :cond_2

    .line 87
    invoke-virtual {p1}, Lcom/intermedia/model/config/Config;->makeItRain()Lcom/intermedia/model/config/EasterEgg;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_Config;->makeItRain:Lcom/intermedia/model/config/EasterEgg;

    invoke-virtual {p1}, Lcom/intermedia/model/config/Config;->makeItRain()Lcom/intermedia/model/config/EasterEgg;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_1
    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_Config;->minVersion:Lcom/intermedia/model/config/Config$MinVersion;

    if-nez v1, :cond_3

    .line 88
    invoke-virtual {p1}, Lcom/intermedia/model/config/Config;->minVersion()Lcom/intermedia/model/config/Config$MinVersion;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_Config;->minVersion:Lcom/intermedia/model/config/Config$MinVersion;

    invoke-virtual {p1}, Lcom/intermedia/model/config/Config;->minVersion()Lcom/intermedia/model/config/Config$MinVersion;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_2
    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_Config;->payouts:Lcom/intermedia/model/config/Payouts;

    if-nez v1, :cond_4

    .line 89
    invoke-virtual {p1}, Lcom/intermedia/model/config/Config;->payouts()Lcom/intermedia/model/config/Payouts;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_Config;->payouts:Lcom/intermedia/model/config/Payouts;

    invoke-virtual {p1}, Lcom/intermedia/model/config/Config;->payouts()Lcom/intermedia/model/config/Payouts;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_3
    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_Config;->streamConfig:Lcom/intermedia/model/config/StreamConfig;

    if-nez v1, :cond_5

    .line 90
    invoke-virtual {p1}, Lcom/intermedia/model/config/Config;->streamConfig()Lcom/intermedia/model/config/StreamConfig;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_Config;->streamConfig:Lcom/intermedia/model/config/StreamConfig;

    invoke-virtual {p1}, Lcom/intermedia/model/config/Config;->streamConfig()Lcom/intermedia/model/config/StreamConfig;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    move v0, v2

    :goto_4
    return v0

    :cond_7
    return v2
.end method

.method public hashCode()I
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/intermedia/model/config/AutoParcel_Config;->eloiEnabled:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/intermedia/model/config/AutoParcel_Config;->eloiEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 101
    iget v3, p0, Lcom/intermedia/model/config/AutoParcel_Config;->elPromptMs:I

    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 103
    iget-object v3, p0, Lcom/intermedia/model/config/AutoParcel_Config;->makeItRain:Lcom/intermedia/model/config/EasterEgg;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/intermedia/model/config/AutoParcel_Config;->makeItRain:Lcom/intermedia/model/config/EasterEgg;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 105
    iget-object v3, p0, Lcom/intermedia/model/config/AutoParcel_Config;->minVersion:Lcom/intermedia/model/config/Config$MinVersion;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/intermedia/model/config/AutoParcel_Config;->minVersion:Lcom/intermedia/model/config/Config$MinVersion;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 107
    iget-object v3, p0, Lcom/intermedia/model/config/AutoParcel_Config;->payouts:Lcom/intermedia/model/config/Payouts;

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lcom/intermedia/model/config/AutoParcel_Config;->payouts:Lcom/intermedia/model/config/Payouts;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 109
    iget-object v2, p0, Lcom/intermedia/model/config/AutoParcel_Config;->streamConfig:Lcom/intermedia/model/config/StreamConfig;

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_Config;->streamConfig:Lcom/intermedia/model/config/StreamConfig;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    xor-int/2addr v0, v1

    return v0
.end method

.method public makeItRain()Lcom/intermedia/model/config/EasterEgg;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/intermedia/model/config/AutoParcel_Config;->makeItRain:Lcom/intermedia/model/config/EasterEgg;

    return-object v0
.end method

.method public minVersion()Lcom/intermedia/model/config/Config$MinVersion;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/intermedia/model/config/AutoParcel_Config;->minVersion:Lcom/intermedia/model/config/Config$MinVersion;

    return-object v0
.end method

.method public payouts()Lcom/intermedia/model/config/Payouts;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/intermedia/model/config/AutoParcel_Config;->payouts:Lcom/intermedia/model/config/Payouts;

    return-object v0
.end method

.method public streamConfig()Lcom/intermedia/model/config/StreamConfig;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/intermedia/model/config/AutoParcel_Config;->streamConfig:Lcom/intermedia/model/config/StreamConfig;

    return-object v0
.end method

.method public toBuilder()Lcom/intermedia/model/config/Config$Builder;
    .locals 1

    .line 147
    new-instance v0, Lcom/intermedia/model/config/AutoParcel_Config$Builder;

    invoke-direct {v0, p0}, Lcom/intermedia/model/config/AutoParcel_Config$Builder;-><init>(Lcom/intermedia/model/config/Config;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Config{eloiEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_Config;->eloiEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", elPromptMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/intermedia/model/config/AutoParcel_Config;->elPromptMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", makeItRain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_Config;->makeItRain:Lcom/intermedia/model/config/EasterEgg;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", minVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_Config;->minVersion:Lcom/intermedia/model/config/Config$MinVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", payouts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_Config;->payouts:Lcom/intermedia/model/config/Payouts;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", streamConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_Config;->streamConfig:Lcom/intermedia/model/config/StreamConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 132
    iget-object p2, p0, Lcom/intermedia/model/config/AutoParcel_Config;->eloiEnabled:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 133
    iget p2, p0, Lcom/intermedia/model/config/AutoParcel_Config;->elPromptMs:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 134
    iget-object p2, p0, Lcom/intermedia/model/config/AutoParcel_Config;->makeItRain:Lcom/intermedia/model/config/EasterEgg;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 135
    iget-object p2, p0, Lcom/intermedia/model/config/AutoParcel_Config;->minVersion:Lcom/intermedia/model/config/Config$MinVersion;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 136
    iget-object p2, p0, Lcom/intermedia/model/config/AutoParcel_Config;->payouts:Lcom/intermedia/model/config/Payouts;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 137
    iget-object p2, p0, Lcom/intermedia/model/config/AutoParcel_Config;->streamConfig:Lcom/intermedia/model/config/StreamConfig;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
