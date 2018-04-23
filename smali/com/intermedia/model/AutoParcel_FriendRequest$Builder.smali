.class final Lcom/intermedia/model/AutoParcel_FriendRequest$Builder;
.super Lcom/intermedia/model/FriendRequest$Builder;
.source "AutoParcel_FriendRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/model/AutoParcel_FriendRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private requestedUser:Lcom/intermedia/model/PartialUser;

.field private requestingUser:Lcom/intermedia/model/PartialUser;

.field private final set$:Ljava/util/BitSet;

.field private status:Lcom/intermedia/model/FriendStatus;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 114
    invoke-direct {p0}, Lcom/intermedia/model/FriendRequest$Builder;-><init>()V

    .line 110
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/intermedia/model/AutoParcel_FriendRequest$Builder;->set$:Ljava/util/BitSet;

    return-void
.end method

.method constructor <init>(Lcom/intermedia/model/FriendRequest;)V
    .locals 1

    .line 116
    invoke-direct {p0}, Lcom/intermedia/model/FriendRequest$Builder;-><init>()V

    .line 110
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/intermedia/model/AutoParcel_FriendRequest$Builder;->set$:Ljava/util/BitSet;

    .line 117
    invoke-virtual {p1}, Lcom/intermedia/model/FriendRequest;->requestedUser()Lcom/intermedia/model/PartialUser;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/AutoParcel_FriendRequest$Builder;->requestedUser(Lcom/intermedia/model/PartialUser;)Lcom/intermedia/model/FriendRequest$Builder;

    .line 118
    invoke-virtual {p1}, Lcom/intermedia/model/FriendRequest;->requestingUser()Lcom/intermedia/model/PartialUser;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/AutoParcel_FriendRequest$Builder;->requestingUser(Lcom/intermedia/model/PartialUser;)Lcom/intermedia/model/FriendRequest$Builder;

    .line 119
    invoke-virtual {p1}, Lcom/intermedia/model/FriendRequest;->status()Lcom/intermedia/model/FriendStatus;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/intermedia/model/AutoParcel_FriendRequest$Builder;->status(Lcom/intermedia/model/FriendStatus;)Lcom/intermedia/model/FriendRequest$Builder;

    return-void
.end method


# virtual methods
.method public build()Lcom/intermedia/model/FriendRequest;
    .locals 5

    .line 141
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_FriendRequest$Builder;->set$:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    const-string v0, "requestedUser"

    const-string v2, "requestingUser"

    const-string v3, "status"

    .line 142
    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 147
    iget-object v4, p0, Lcom/intermedia/model/AutoParcel_FriendRequest$Builder;->set$:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0x20

    .line 148
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 151
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

    .line 153
    :cond_2
    new-instance v0, Lcom/intermedia/model/AutoParcel_FriendRequest;

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_FriendRequest$Builder;->requestedUser:Lcom/intermedia/model/PartialUser;

    iget-object v2, p0, Lcom/intermedia/model/AutoParcel_FriendRequest$Builder;->requestingUser:Lcom/intermedia/model/PartialUser;

    iget-object v3, p0, Lcom/intermedia/model/AutoParcel_FriendRequest$Builder;->status:Lcom/intermedia/model/FriendStatus;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/intermedia/model/AutoParcel_FriendRequest;-><init>(Lcom/intermedia/model/PartialUser;Lcom/intermedia/model/PartialUser;Lcom/intermedia/model/FriendStatus;Lcom/intermedia/model/AutoParcel_FriendRequest$1;)V

    return-object v0
.end method

.method public requestedUser(Lcom/intermedia/model/PartialUser;)Lcom/intermedia/model/FriendRequest$Builder;
    .locals 1

    .line 123
    iput-object p1, p0, Lcom/intermedia/model/AutoParcel_FriendRequest$Builder;->requestedUser:Lcom/intermedia/model/PartialUser;

    .line 124
    iget-object p1, p0, Lcom/intermedia/model/AutoParcel_FriendRequest$Builder;->set$:Ljava/util/BitSet;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-object p0
.end method

.method public requestingUser(Lcom/intermedia/model/PartialUser;)Lcom/intermedia/model/FriendRequest$Builder;
    .locals 1

    .line 129
    iput-object p1, p0, Lcom/intermedia/model/AutoParcel_FriendRequest$Builder;->requestingUser:Lcom/intermedia/model/PartialUser;

    .line 130
    iget-object p1, p0, Lcom/intermedia/model/AutoParcel_FriendRequest$Builder;->set$:Ljava/util/BitSet;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-object p0
.end method

.method public status(Lcom/intermedia/model/FriendStatus;)Lcom/intermedia/model/FriendRequest$Builder;
    .locals 1

    .line 135
    iput-object p1, p0, Lcom/intermedia/model/AutoParcel_FriendRequest$Builder;->status:Lcom/intermedia/model/FriendStatus;

    .line 136
    iget-object p1, p0, Lcom/intermedia/model/AutoParcel_FriendRequest$Builder;->set$:Ljava/util/BitSet;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-object p0
.end method
