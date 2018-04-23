.class final Lcom/intermedia/model/retrofit/envelope/AutoParcel_FriendRequestsEnvelope$Builder;
.super Lcom/intermedia/model/retrofit/envelope/FriendRequestsEnvelope$Builder;
.source "AutoParcel_FriendRequestsEnvelope.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/model/retrofit/envelope/AutoParcel_FriendRequestsEnvelope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/intermedia/model/FriendRequest;",
            ">;"
        }
    .end annotation
.end field

.field private links:Lcom/intermedia/model/Links;

.field private final set$:Ljava/util/BitSet;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 105
    invoke-direct {p0}, Lcom/intermedia/model/retrofit/envelope/FriendRequestsEnvelope$Builder;-><init>()V

    .line 102
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/intermedia/model/retrofit/envelope/AutoParcel_FriendRequestsEnvelope$Builder;->set$:Ljava/util/BitSet;

    return-void
.end method

.method constructor <init>(Lcom/intermedia/model/retrofit/envelope/FriendRequestsEnvelope;)V
    .locals 1

    .line 107
    invoke-direct {p0}, Lcom/intermedia/model/retrofit/envelope/FriendRequestsEnvelope$Builder;-><init>()V

    .line 102
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/intermedia/model/retrofit/envelope/AutoParcel_FriendRequestsEnvelope$Builder;->set$:Ljava/util/BitSet;

    .line 108
    invoke-virtual {p1}, Lcom/intermedia/model/retrofit/envelope/FriendRequestsEnvelope;->data()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/retrofit/envelope/AutoParcel_FriendRequestsEnvelope$Builder;->data(Ljava/util/List;)Lcom/intermedia/model/retrofit/envelope/FriendRequestsEnvelope$Builder;

    .line 109
    invoke-virtual {p1}, Lcom/intermedia/model/retrofit/envelope/FriendRequestsEnvelope;->links()Lcom/intermedia/model/Links;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/intermedia/model/retrofit/envelope/AutoParcel_FriendRequestsEnvelope$Builder;->links(Lcom/intermedia/model/Links;)Lcom/intermedia/model/retrofit/envelope/FriendRequestsEnvelope$Builder;

    return-void
.end method


# virtual methods
.method public build()Lcom/intermedia/model/retrofit/envelope/FriendRequestsEnvelope;
    .locals 5

    .line 125
    iget-object v0, p0, Lcom/intermedia/model/retrofit/envelope/AutoParcel_FriendRequestsEnvelope$Builder;->set$:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    const-string v0, "data"

    const-string v2, "links"

    .line 126
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 131
    iget-object v4, p0, Lcom/intermedia/model/retrofit/envelope/AutoParcel_FriendRequestsEnvelope$Builder;->set$:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0x20

    .line 132
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 135
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

    .line 137
    :cond_2
    new-instance v0, Lcom/intermedia/model/retrofit/envelope/AutoParcel_FriendRequestsEnvelope;

    iget-object v1, p0, Lcom/intermedia/model/retrofit/envelope/AutoParcel_FriendRequestsEnvelope$Builder;->data:Ljava/util/List;

    iget-object v2, p0, Lcom/intermedia/model/retrofit/envelope/AutoParcel_FriendRequestsEnvelope$Builder;->links:Lcom/intermedia/model/Links;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/intermedia/model/retrofit/envelope/AutoParcel_FriendRequestsEnvelope;-><init>(Ljava/util/List;Lcom/intermedia/model/Links;Lcom/intermedia/model/retrofit/envelope/AutoParcel_FriendRequestsEnvelope$1;)V

    return-object v0
.end method

.method public data(Ljava/util/List;)Lcom/intermedia/model/retrofit/envelope/FriendRequestsEnvelope$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/intermedia/model/FriendRequest;",
            ">;)",
            "Lcom/intermedia/model/retrofit/envelope/FriendRequestsEnvelope$Builder;"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lcom/intermedia/model/retrofit/envelope/AutoParcel_FriendRequestsEnvelope$Builder;->data:Ljava/util/List;

    .line 114
    iget-object p1, p0, Lcom/intermedia/model/retrofit/envelope/AutoParcel_FriendRequestsEnvelope$Builder;->set$:Ljava/util/BitSet;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-object p0
.end method

.method public links(Lcom/intermedia/model/Links;)Lcom/intermedia/model/retrofit/envelope/FriendRequestsEnvelope$Builder;
    .locals 1

    .line 119
    iput-object p1, p0, Lcom/intermedia/model/retrofit/envelope/AutoParcel_FriendRequestsEnvelope$Builder;->links:Lcom/intermedia/model/Links;

    .line 120
    iget-object p1, p0, Lcom/intermedia/model/retrofit/envelope/AutoParcel_FriendRequestsEnvelope$Builder;->set$:Ljava/util/BitSet;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-object p0
.end method
