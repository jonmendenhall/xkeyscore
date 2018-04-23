.class final Lcom/intermedia/model/config/AutoParcel_Payouts$Builder;
.super Lcom/intermedia/model/config/Payouts$Builder;
.source "AutoParcel_Payouts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/model/config/AutoParcel_Payouts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private active:Z

.field private mode:Ljava/lang/String;

.field private final set$:Ljava/util/BitSet;

.field private threshold:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 112
    invoke-direct {p0}, Lcom/intermedia/model/config/Payouts$Builder;-><init>()V

    .line 108
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/intermedia/model/config/AutoParcel_Payouts$Builder;->set$:Ljava/util/BitSet;

    return-void
.end method

.method constructor <init>(Lcom/intermedia/model/config/Payouts;)V
    .locals 1

    .line 114
    invoke-direct {p0}, Lcom/intermedia/model/config/Payouts$Builder;-><init>()V

    .line 108
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/intermedia/model/config/AutoParcel_Payouts$Builder;->set$:Ljava/util/BitSet;

    .line 115
    invoke-virtual {p1}, Lcom/intermedia/model/config/Payouts;->active()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/config/AutoParcel_Payouts$Builder;->active(Z)Lcom/intermedia/model/config/Payouts$Builder;

    .line 116
    invoke-virtual {p1}, Lcom/intermedia/model/config/Payouts;->mode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/config/AutoParcel_Payouts$Builder;->mode(Ljava/lang/String;)Lcom/intermedia/model/config/Payouts$Builder;

    .line 117
    invoke-virtual {p1}, Lcom/intermedia/model/config/Payouts;->threshold()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/intermedia/model/config/AutoParcel_Payouts$Builder;->threshold(Ljava/lang/String;)Lcom/intermedia/model/config/Payouts$Builder;

    return-void
.end method


# virtual methods
.method public active(Z)Lcom/intermedia/model/config/Payouts$Builder;
    .locals 1

    .line 121
    iput-boolean p1, p0, Lcom/intermedia/model/config/AutoParcel_Payouts$Builder;->active:Z

    .line 122
    iget-object p1, p0, Lcom/intermedia/model/config/AutoParcel_Payouts$Builder;->set$:Ljava/util/BitSet;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-object p0
.end method

.method public build()Lcom/intermedia/model/config/Payouts;
    .locals 5

    .line 137
    iget-object v0, p0, Lcom/intermedia/model/config/AutoParcel_Payouts$Builder;->set$:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    const-string v0, "active"

    .line 138
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 143
    iget-object v4, p0, Lcom/intermedia/model/config/AutoParcel_Payouts$Builder;->set$:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0x20

    .line 144
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 147
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required properties:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_2
    new-instance v0, Lcom/intermedia/model/config/AutoParcel_Payouts;

    iget-boolean v1, p0, Lcom/intermedia/model/config/AutoParcel_Payouts$Builder;->active:Z

    iget-object v2, p0, Lcom/intermedia/model/config/AutoParcel_Payouts$Builder;->mode:Ljava/lang/String;

    iget-object v3, p0, Lcom/intermedia/model/config/AutoParcel_Payouts$Builder;->threshold:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/intermedia/model/config/AutoParcel_Payouts;-><init>(ZLjava/lang/String;Ljava/lang/String;Lcom/intermedia/model/config/AutoParcel_Payouts$1;)V

    return-object v0
.end method

.method public mode(Ljava/lang/String;)Lcom/intermedia/model/config/Payouts$Builder;
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/intermedia/model/config/AutoParcel_Payouts$Builder;->mode:Ljava/lang/String;

    return-object p0
.end method

.method public threshold(Ljava/lang/String;)Lcom/intermedia/model/config/Payouts$Builder;
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/intermedia/model/config/AutoParcel_Payouts$Builder;->threshold:Ljava/lang/String;

    return-object p0
.end method
