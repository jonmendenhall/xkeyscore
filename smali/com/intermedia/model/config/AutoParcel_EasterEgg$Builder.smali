.class final Lcom/intermedia/model/config/AutoParcel_EasterEgg$Builder;
.super Lcom/intermedia/model/config/EasterEgg$Builder;
.source "AutoParcel_EasterEgg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/model/config/AutoParcel_EasterEgg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private enabled:Z

.field private interval:J

.field private final set$:Ljava/util/BitSet;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Lcom/intermedia/model/config/EasterEgg$Builder;-><init>()V

    .line 93
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/intermedia/model/config/AutoParcel_EasterEgg$Builder;->set$:Ljava/util/BitSet;

    return-void
.end method

.method constructor <init>(Lcom/intermedia/model/config/EasterEgg;)V
    .locals 2

    .line 98
    invoke-direct {p0}, Lcom/intermedia/model/config/EasterEgg$Builder;-><init>()V

    .line 93
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/intermedia/model/config/AutoParcel_EasterEgg$Builder;->set$:Ljava/util/BitSet;

    .line 99
    invoke-virtual {p1}, Lcom/intermedia/model/config/EasterEgg;->enabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/config/AutoParcel_EasterEgg$Builder;->enabled(Z)Lcom/intermedia/model/config/EasterEgg$Builder;

    .line 100
    invoke-virtual {p1}, Lcom/intermedia/model/config/EasterEgg;->interval()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/intermedia/model/config/AutoParcel_EasterEgg$Builder;->interval(J)Lcom/intermedia/model/config/EasterEgg$Builder;

    return-void
.end method


# virtual methods
.method public build()Lcom/intermedia/model/config/EasterEgg;
    .locals 5

    .line 116
    iget-object v0, p0, Lcom/intermedia/model/config/AutoParcel_EasterEgg$Builder;->set$:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    const-string v0, "enabled"

    const-string v2, "interval"

    .line 117
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 122
    iget-object v4, p0, Lcom/intermedia/model/config/AutoParcel_EasterEgg$Builder;->set$:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0x20

    .line 123
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 126
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

    .line 128
    :cond_2
    new-instance v0, Lcom/intermedia/model/config/AutoParcel_EasterEgg;

    iget-boolean v1, p0, Lcom/intermedia/model/config/AutoParcel_EasterEgg$Builder;->enabled:Z

    iget-wide v2, p0, Lcom/intermedia/model/config/AutoParcel_EasterEgg$Builder;->interval:J

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/intermedia/model/config/AutoParcel_EasterEgg;-><init>(ZJLcom/intermedia/model/config/AutoParcel_EasterEgg$1;)V

    return-object v0
.end method

.method public enabled(Z)Lcom/intermedia/model/config/EasterEgg$Builder;
    .locals 1

    .line 104
    iput-boolean p1, p0, Lcom/intermedia/model/config/AutoParcel_EasterEgg$Builder;->enabled:Z

    .line 105
    iget-object p1, p0, Lcom/intermedia/model/config/AutoParcel_EasterEgg$Builder;->set$:Ljava/util/BitSet;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-object p0
.end method

.method public interval(J)Lcom/intermedia/model/config/EasterEgg$Builder;
    .locals 0

    .line 110
    iput-wide p1, p0, Lcom/intermedia/model/config/AutoParcel_EasterEgg$Builder;->interval:J

    .line 111
    iget-object p1, p0, Lcom/intermedia/model/config/AutoParcel_EasterEgg$Builder;->set$:Ljava/util/BitSet;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->set(I)V

    return-object p0
.end method
