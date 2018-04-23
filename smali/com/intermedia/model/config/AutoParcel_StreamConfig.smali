.class final Lcom/intermedia/model/config/AutoParcel_StreamConfig;
.super Lcom/intermedia/model/config/StreamConfig;
.source "AutoParcel_StreamConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/model/config/AutoParcel_StreamConfig$Builder;
    }
.end annotation


# instance fields
.field private final allowsReconnect:Ljava/lang/Boolean;

.field private final downStepFloor:Ljava/lang/Integer;

.field private final downStepSampleSize:Ljava/lang/Integer;

.field private final isDownStepEnabled:Ljava/lang/Boolean;

.field private final isUpStepEnabled:Ljava/lang/Boolean;

.field private final upStepCeil:Ljava/lang/Integer;

.field private final upStepSampleSize:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/intermedia/model/config/StreamConfig;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->allowsReconnect:Ljava/lang/Boolean;

    .line 25
    iput-object p2, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->isDownStepEnabled:Ljava/lang/Boolean;

    .line 26
    iput-object p3, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->isUpStepEnabled:Ljava/lang/Boolean;

    .line 27
    iput-object p4, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->downStepFloor:Ljava/lang/Integer;

    .line 28
    iput-object p5, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->downStepSampleSize:Ljava/lang/Integer;

    .line 29
    iput-object p6, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->upStepCeil:Ljava/lang/Integer;

    .line 30
    iput-object p7, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->upStepSampleSize:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/intermedia/model/config/AutoParcel_StreamConfig$1;)V
    .locals 0

    .line 6
    invoke-direct/range {p0 .. p7}, Lcom/intermedia/model/config/AutoParcel_StreamConfig;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public allowsReconnect()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->allowsReconnect:Ljava/lang/Boolean;

    return-object v0
.end method

.method public downStepFloor()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->downStepFloor:Ljava/lang/Integer;

    return-object v0
.end method

.method public downStepSampleSize()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->downStepSampleSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 93
    :cond_0
    instance-of v1, p1, Lcom/intermedia/model/config/StreamConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 94
    check-cast p1, Lcom/intermedia/model/config/StreamConfig;

    .line 95
    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->allowsReconnect:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/intermedia/model/config/StreamConfig;->allowsReconnect()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->allowsReconnect:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/intermedia/model/config/StreamConfig;->allowsReconnect()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_0
    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->isDownStepEnabled:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    .line 96
    invoke-virtual {p1}, Lcom/intermedia/model/config/StreamConfig;->isDownStepEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->isDownStepEnabled:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/intermedia/model/config/StreamConfig;->isDownStepEnabled()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_1
    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->isUpStepEnabled:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    .line 97
    invoke-virtual {p1}, Lcom/intermedia/model/config/StreamConfig;->isUpStepEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->isUpStepEnabled:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/intermedia/model/config/StreamConfig;->isUpStepEnabled()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_2
    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->downStepFloor:Ljava/lang/Integer;

    if-nez v1, :cond_4

    .line 98
    invoke-virtual {p1}, Lcom/intermedia/model/config/StreamConfig;->downStepFloor()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->downStepFloor:Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/intermedia/model/config/StreamConfig;->downStepFloor()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_3
    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->downStepSampleSize:Ljava/lang/Integer;

    if-nez v1, :cond_5

    .line 99
    invoke-virtual {p1}, Lcom/intermedia/model/config/StreamConfig;->downStepSampleSize()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->downStepSampleSize:Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/intermedia/model/config/StreamConfig;->downStepSampleSize()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_4
    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->upStepCeil:Ljava/lang/Integer;

    if-nez v1, :cond_6

    .line 100
    invoke-virtual {p1}, Lcom/intermedia/model/config/StreamConfig;->upStepCeil()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_5

    :cond_6
    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->upStepCeil:Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/intermedia/model/config/StreamConfig;->upStepCeil()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_5
    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->upStepSampleSize:Ljava/lang/Integer;

    if-nez v1, :cond_7

    .line 101
    invoke-virtual {p1}, Lcom/intermedia/model/config/StreamConfig;->upStepSampleSize()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_6

    :cond_7
    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->upStepSampleSize:Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/intermedia/model/config/StreamConfig;->upStepSampleSize()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_6

    :cond_8
    move v0, v2

    :goto_6
    return v0

    :cond_9
    return v2
.end method

.method public hashCode()I
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->allowsReconnect:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->allowsReconnect:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 112
    iget-object v3, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->isDownStepEnabled:Ljava/lang/Boolean;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->isDownStepEnabled:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 114
    iget-object v3, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->isUpStepEnabled:Ljava/lang/Boolean;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->isUpStepEnabled:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    :goto_2
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 116
    iget-object v3, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->downStepFloor:Ljava/lang/Integer;

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->downStepFloor:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :goto_3
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 118
    iget-object v3, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->downStepSampleSize:Ljava/lang/Integer;

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    iget-object v3, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->downStepSampleSize:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :goto_4
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 120
    iget-object v3, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->upStepCeil:Ljava/lang/Integer;

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_5

    :cond_5
    iget-object v3, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->upStepCeil:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :goto_5
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 122
    iget-object v2, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->upStepSampleSize:Ljava/lang/Integer;

    if-nez v2, :cond_6

    goto :goto_6

    :cond_6
    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->upStepSampleSize:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_6
    xor-int/2addr v0, v1

    return v0
.end method

.method public isDownStepEnabled()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->isDownStepEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isUpStepEnabled()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->isUpStepEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StreamConfig{allowsReconnect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->allowsReconnect:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isDownStepEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->isDownStepEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isUpStepEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->isUpStepEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", downStepFloor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->downStepFloor:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", downStepSampleSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->downStepSampleSize:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", upStepCeil="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->upStepCeil:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", upStepSampleSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->upStepSampleSize:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public upStepCeil()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->upStepCeil:Ljava/lang/Integer;

    return-object v0
.end method

.method public upStepSampleSize()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;->upStepSampleSize:Ljava/lang/Integer;

    return-object v0
.end method
