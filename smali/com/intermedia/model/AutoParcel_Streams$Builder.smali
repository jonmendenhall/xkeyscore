.class final Lcom/intermedia/model/AutoParcel_Streams$Builder;
.super Lcom/intermedia/model/Streams$Builder;
.source "AutoParcel_Streams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/model/AutoParcel_Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private high:Ljava/lang/String;

.field private low:Ljava/lang/String;

.field private medium:Ljava/lang/String;

.field private passthrough:Ljava/lang/String;

.field private final set$:Ljava/util/BitSet;

.field private source:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 138
    invoke-direct {p0}, Lcom/intermedia/model/Streams$Builder;-><init>()V

    .line 132
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/intermedia/model/AutoParcel_Streams$Builder;->set$:Ljava/util/BitSet;

    return-void
.end method

.method constructor <init>(Lcom/intermedia/model/Streams;)V
    .locals 1

    .line 140
    invoke-direct {p0}, Lcom/intermedia/model/Streams$Builder;-><init>()V

    .line 132
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/intermedia/model/AutoParcel_Streams$Builder;->set$:Ljava/util/BitSet;

    .line 141
    invoke-virtual {p1}, Lcom/intermedia/model/Streams;->source()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/AutoParcel_Streams$Builder;->source(Ljava/lang/String;)Lcom/intermedia/model/Streams$Builder;

    .line 142
    invoke-virtual {p1}, Lcom/intermedia/model/Streams;->passthrough()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/AutoParcel_Streams$Builder;->passthrough(Ljava/lang/String;)Lcom/intermedia/model/Streams$Builder;

    .line 143
    invoke-virtual {p1}, Lcom/intermedia/model/Streams;->high()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/AutoParcel_Streams$Builder;->high(Ljava/lang/String;)Lcom/intermedia/model/Streams$Builder;

    .line 144
    invoke-virtual {p1}, Lcom/intermedia/model/Streams;->medium()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/AutoParcel_Streams$Builder;->medium(Ljava/lang/String;)Lcom/intermedia/model/Streams$Builder;

    .line 145
    invoke-virtual {p1}, Lcom/intermedia/model/Streams;->low()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/intermedia/model/AutoParcel_Streams$Builder;->low(Ljava/lang/String;)Lcom/intermedia/model/Streams$Builder;

    return-void
.end method


# virtual methods
.method public build()Lcom/intermedia/model/Streams;
    .locals 9

    .line 174
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_Streams$Builder;->set$:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 175
    new-array v0, v0, [Ljava/lang/String;

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
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

    .line 185
    :cond_0
    new-instance v0, Lcom/intermedia/model/AutoParcel_Streams;

    iget-object v3, p0, Lcom/intermedia/model/AutoParcel_Streams$Builder;->source:Ljava/lang/String;

    iget-object v4, p0, Lcom/intermedia/model/AutoParcel_Streams$Builder;->passthrough:Ljava/lang/String;

    iget-object v5, p0, Lcom/intermedia/model/AutoParcel_Streams$Builder;->high:Ljava/lang/String;

    iget-object v6, p0, Lcom/intermedia/model/AutoParcel_Streams$Builder;->medium:Ljava/lang/String;

    iget-object v7, p0, Lcom/intermedia/model/AutoParcel_Streams$Builder;->low:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/intermedia/model/AutoParcel_Streams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/intermedia/model/AutoParcel_Streams$1;)V

    return-object v0
.end method

.method public high(Ljava/lang/String;)Lcom/intermedia/model/Streams$Builder;
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/intermedia/model/AutoParcel_Streams$Builder;->high:Ljava/lang/String;

    return-object p0
.end method

.method public low(Ljava/lang/String;)Lcom/intermedia/model/Streams$Builder;
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/intermedia/model/AutoParcel_Streams$Builder;->low:Ljava/lang/String;

    return-object p0
.end method

.method public medium(Ljava/lang/String;)Lcom/intermedia/model/Streams$Builder;
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/intermedia/model/AutoParcel_Streams$Builder;->medium:Ljava/lang/String;

    return-object p0
.end method

.method public passthrough(Ljava/lang/String;)Lcom/intermedia/model/Streams$Builder;
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/intermedia/model/AutoParcel_Streams$Builder;->passthrough:Ljava/lang/String;

    return-object p0
.end method

.method public source(Ljava/lang/String;)Lcom/intermedia/model/Streams$Builder;
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/intermedia/model/AutoParcel_Streams$Builder;->source:Ljava/lang/String;

    return-object p0
.end method
