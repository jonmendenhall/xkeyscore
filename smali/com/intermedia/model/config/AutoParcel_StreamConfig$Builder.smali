.class final Lcom/intermedia/model/config/AutoParcel_StreamConfig$Builder;
.super Lcom/intermedia/model/config/StreamConfig$Builder;
.source "AutoParcel_StreamConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/model/config/AutoParcel_StreamConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private allowsReconnect:Ljava/lang/Boolean;

.field private downStepFloor:Ljava/lang/Integer;

.field private downStepSampleSize:Ljava/lang/Integer;

.field private isDownStepEnabled:Ljava/lang/Boolean;

.field private isUpStepEnabled:Ljava/lang/Boolean;

.field private final set$:Ljava/util/BitSet;

.field private upStepCeil:Ljava/lang/Integer;

.field private upStepSampleSize:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 135
    invoke-direct {p0}, Lcom/intermedia/model/config/StreamConfig$Builder;-><init>()V

    .line 127
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig$Builder;->set$:Ljava/util/BitSet;

    return-void
.end method

.method constructor <init>(Lcom/intermedia/model/config/StreamConfig;)V
    .locals 1

    .line 137
    invoke-direct {p0}, Lcom/intermedia/model/config/StreamConfig$Builder;-><init>()V

    .line 127
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig$Builder;->set$:Ljava/util/BitSet;

    .line 138
    invoke-virtual {p1}, Lcom/intermedia/model/config/StreamConfig;->allowsReconnect()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/config/AutoParcel_StreamConfig$Builder;->allowsReconnect(Ljava/lang/Boolean;)Lcom/intermedia/model/config/StreamConfig$Builder;

    .line 139
    invoke-virtual {p1}, Lcom/intermedia/model/config/StreamConfig;->isDownStepEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/config/AutoParcel_StreamConfig$Builder;->isDownStepEnabled(Ljava/lang/Boolean;)Lcom/intermedia/model/config/StreamConfig$Builder;

    .line 140
    invoke-virtual {p1}, Lcom/intermedia/model/config/StreamConfig;->isUpStepEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/config/AutoParcel_StreamConfig$Builder;->isUpStepEnabled(Ljava/lang/Boolean;)Lcom/intermedia/model/config/StreamConfig$Builder;

    .line 141
    invoke-virtual {p1}, Lcom/intermedia/model/config/StreamConfig;->downStepFloor()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/config/AutoParcel_StreamConfig$Builder;->downStepFloor(Ljava/lang/Integer;)Lcom/intermedia/model/config/StreamConfig$Builder;

    .line 142
    invoke-virtual {p1}, Lcom/intermedia/model/config/StreamConfig;->downStepSampleSize()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/config/AutoParcel_StreamConfig$Builder;->downStepSampleSize(Ljava/lang/Integer;)Lcom/intermedia/model/config/StreamConfig$Builder;

    .line 143
    invoke-virtual {p1}, Lcom/intermedia/model/config/StreamConfig;->upStepCeil()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/config/AutoParcel_StreamConfig$Builder;->upStepCeil(Ljava/lang/Integer;)Lcom/intermedia/model/config/StreamConfig$Builder;

    .line 144
    invoke-virtual {p1}, Lcom/intermedia/model/config/StreamConfig;->upStepSampleSize()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/intermedia/model/config/AutoParcel_StreamConfig$Builder;->upStepSampleSize(Ljava/lang/Integer;)Lcom/intermedia/model/config/StreamConfig$Builder;

    return-void
.end method


# virtual methods
.method public allowsReconnect(Ljava/lang/Boolean;)Lcom/intermedia/model/config/StreamConfig$Builder;
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig$Builder;->allowsReconnect:Ljava/lang/Boolean;

    return-object p0
.end method

.method public build()Lcom/intermedia/model/config/StreamConfig;
    .locals 11

    .line 183
    iget-object v0, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig$Builder;->set$:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 184
    new-array v0, v0, [Ljava/lang/String;

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
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

    .line 194
    :cond_0
    new-instance v0, Lcom/intermedia/model/config/AutoParcel_StreamConfig;

    iget-object v3, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig$Builder;->allowsReconnect:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig$Builder;->isDownStepEnabled:Ljava/lang/Boolean;

    iget-object v5, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig$Builder;->isUpStepEnabled:Ljava/lang/Boolean;

    iget-object v6, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig$Builder;->downStepFloor:Ljava/lang/Integer;

    iget-object v7, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig$Builder;->downStepSampleSize:Ljava/lang/Integer;

    iget-object v8, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig$Builder;->upStepCeil:Ljava/lang/Integer;

    iget-object v9, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig$Builder;->upStepSampleSize:Ljava/lang/Integer;

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/intermedia/model/config/AutoParcel_StreamConfig;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/intermedia/model/config/AutoParcel_StreamConfig$1;)V

    return-object v0
.end method

.method public downStepFloor(Ljava/lang/Integer;)Lcom/intermedia/model/config/StreamConfig$Builder;
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig$Builder;->downStepFloor:Ljava/lang/Integer;

    return-object p0
.end method

.method public downStepSampleSize(Ljava/lang/Integer;)Lcom/intermedia/model/config/StreamConfig$Builder;
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig$Builder;->downStepSampleSize:Ljava/lang/Integer;

    return-object p0
.end method

.method public isDownStepEnabled(Ljava/lang/Boolean;)Lcom/intermedia/model/config/StreamConfig$Builder;
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig$Builder;->isDownStepEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public isUpStepEnabled(Ljava/lang/Boolean;)Lcom/intermedia/model/config/StreamConfig$Builder;
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig$Builder;->isUpStepEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public upStepCeil(Ljava/lang/Integer;)Lcom/intermedia/model/config/StreamConfig$Builder;
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig$Builder;->upStepCeil:Ljava/lang/Integer;

    return-object p0
.end method

.method public upStepSampleSize(Ljava/lang/Integer;)Lcom/intermedia/model/config/StreamConfig$Builder;
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/intermedia/model/config/AutoParcel_StreamConfig$Builder;->upStepSampleSize:Ljava/lang/Integer;

    return-object p0
.end method
