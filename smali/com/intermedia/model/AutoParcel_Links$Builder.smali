.class final Lcom/intermedia/model/AutoParcel_Links$Builder;
.super Lcom/intermedia/model/Links$Builder;
.source "AutoParcel_Links.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/model/AutoParcel_Links;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private next:Ljava/lang/String;

.field private prev:Ljava/lang/String;

.field private self:Ljava/lang/String;

.field private final set$:Ljava/util/BitSet;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 119
    invoke-direct {p0}, Lcom/intermedia/model/Links$Builder;-><init>()V

    .line 115
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/intermedia/model/AutoParcel_Links$Builder;->set$:Ljava/util/BitSet;

    return-void
.end method

.method constructor <init>(Lcom/intermedia/model/Links;)V
    .locals 1

    .line 121
    invoke-direct {p0}, Lcom/intermedia/model/Links$Builder;-><init>()V

    .line 115
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/intermedia/model/AutoParcel_Links$Builder;->set$:Ljava/util/BitSet;

    .line 122
    invoke-virtual {p1}, Lcom/intermedia/model/Links;->next()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/AutoParcel_Links$Builder;->next(Ljava/lang/String;)Lcom/intermedia/model/Links$Builder;

    .line 123
    invoke-virtual {p1}, Lcom/intermedia/model/Links;->prev()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/AutoParcel_Links$Builder;->prev(Ljava/lang/String;)Lcom/intermedia/model/Links$Builder;

    .line 124
    invoke-virtual {p1}, Lcom/intermedia/model/Links;->self()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/intermedia/model/AutoParcel_Links$Builder;->self(Ljava/lang/String;)Lcom/intermedia/model/Links$Builder;

    return-void
.end method


# virtual methods
.method public build()Lcom/intermedia/model/Links;
    .locals 5

    .line 146
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_Links$Builder;->set$:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    const-string v0, "next"

    const-string v2, "prev"

    const-string v3, "self"

    .line 147
    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 152
    iget-object v4, p0, Lcom/intermedia/model/AutoParcel_Links$Builder;->set$:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0x20

    .line 153
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 156
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

    .line 158
    :cond_2
    new-instance v0, Lcom/intermedia/model/AutoParcel_Links;

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_Links$Builder;->next:Ljava/lang/String;

    iget-object v2, p0, Lcom/intermedia/model/AutoParcel_Links$Builder;->prev:Ljava/lang/String;

    iget-object v3, p0, Lcom/intermedia/model/AutoParcel_Links$Builder;->self:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/intermedia/model/AutoParcel_Links;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/intermedia/model/AutoParcel_Links$1;)V

    return-object v0
.end method

.method public next(Ljava/lang/String;)Lcom/intermedia/model/Links$Builder;
    .locals 1

    .line 128
    iput-object p1, p0, Lcom/intermedia/model/AutoParcel_Links$Builder;->next:Ljava/lang/String;

    .line 129
    iget-object p1, p0, Lcom/intermedia/model/AutoParcel_Links$Builder;->set$:Ljava/util/BitSet;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-object p0
.end method

.method public prev(Ljava/lang/String;)Lcom/intermedia/model/Links$Builder;
    .locals 1

    .line 134
    iput-object p1, p0, Lcom/intermedia/model/AutoParcel_Links$Builder;->prev:Ljava/lang/String;

    .line 135
    iget-object p1, p0, Lcom/intermedia/model/AutoParcel_Links$Builder;->set$:Ljava/util/BitSet;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-object p0
.end method

.method public self(Ljava/lang/String;)Lcom/intermedia/model/Links$Builder;
    .locals 1

    .line 140
    iput-object p1, p0, Lcom/intermedia/model/AutoParcel_Links$Builder;->self:Ljava/lang/String;

    .line 141
    iget-object p1, p0, Lcom/intermedia/model/AutoParcel_Links$Builder;->set$:Ljava/util/BitSet;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-object p0
.end method
