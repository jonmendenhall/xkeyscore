.class final Lcom/intermedia/model/AutoParcel_PlayerContact$Builder;
.super Lcom/intermedia/model/PlayerContact$Builder;
.source "AutoParcel_PlayerContact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/model/AutoParcel_PlayerContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private final set$:Ljava/util/BitSet;

.field private status:Lcom/intermedia/model/PlayerContact$Status;

.field private user:Lcom/intermedia/model/PartialUser;

.field private uuid:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 117
    invoke-direct {p0}, Lcom/intermedia/model/PlayerContact$Builder;-><init>()V

    .line 113
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/intermedia/model/AutoParcel_PlayerContact$Builder;->set$:Ljava/util/BitSet;

    return-void
.end method

.method constructor <init>(Lcom/intermedia/model/PlayerContact;)V
    .locals 1

    .line 119
    invoke-direct {p0}, Lcom/intermedia/model/PlayerContact$Builder;-><init>()V

    .line 113
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/intermedia/model/AutoParcel_PlayerContact$Builder;->set$:Ljava/util/BitSet;

    .line 120
    invoke-virtual {p1}, Lcom/intermedia/model/PlayerContact;->status()Lcom/intermedia/model/PlayerContact$Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/AutoParcel_PlayerContact$Builder;->status(Lcom/intermedia/model/PlayerContact$Status;)Lcom/intermedia/model/PlayerContact$Builder;

    .line 121
    invoke-virtual {p1}, Lcom/intermedia/model/PlayerContact;->user()Lcom/intermedia/model/PartialUser;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/AutoParcel_PlayerContact$Builder;->user(Lcom/intermedia/model/PartialUser;)Lcom/intermedia/model/PlayerContact$Builder;

    .line 122
    invoke-virtual {p1}, Lcom/intermedia/model/PlayerContact;->uuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/intermedia/model/AutoParcel_PlayerContact$Builder;->uuid(Ljava/lang/String;)Lcom/intermedia/model/PlayerContact$Builder;

    return-void
.end method


# virtual methods
.method public build()Lcom/intermedia/model/PlayerContact;
    .locals 5

    .line 143
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_PlayerContact$Builder;->set$:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    const-string v0, "status"

    const-string v2, "uuid"

    .line 144
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 149
    iget-object v4, p0, Lcom/intermedia/model/AutoParcel_PlayerContact$Builder;->set$:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0x20

    .line 150
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 153
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

    .line 155
    :cond_2
    new-instance v0, Lcom/intermedia/model/AutoParcel_PlayerContact;

    iget-object v1, p0, Lcom/intermedia/model/AutoParcel_PlayerContact$Builder;->status:Lcom/intermedia/model/PlayerContact$Status;

    iget-object v2, p0, Lcom/intermedia/model/AutoParcel_PlayerContact$Builder;->user:Lcom/intermedia/model/PartialUser;

    iget-object v3, p0, Lcom/intermedia/model/AutoParcel_PlayerContact$Builder;->uuid:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/intermedia/model/AutoParcel_PlayerContact;-><init>(Lcom/intermedia/model/PlayerContact$Status;Lcom/intermedia/model/PartialUser;Ljava/lang/String;Lcom/intermedia/model/AutoParcel_PlayerContact$1;)V

    return-object v0
.end method

.method public status(Lcom/intermedia/model/PlayerContact$Status;)Lcom/intermedia/model/PlayerContact$Builder;
    .locals 1

    .line 126
    iput-object p1, p0, Lcom/intermedia/model/AutoParcel_PlayerContact$Builder;->status:Lcom/intermedia/model/PlayerContact$Status;

    .line 127
    iget-object p1, p0, Lcom/intermedia/model/AutoParcel_PlayerContact$Builder;->set$:Ljava/util/BitSet;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-object p0
.end method

.method public user(Lcom/intermedia/model/PartialUser;)Lcom/intermedia/model/PlayerContact$Builder;
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/intermedia/model/AutoParcel_PlayerContact$Builder;->user:Lcom/intermedia/model/PartialUser;

    return-object p0
.end method

.method public uuid(Ljava/lang/String;)Lcom/intermedia/model/PlayerContact$Builder;
    .locals 1

    .line 137
    iput-object p1, p0, Lcom/intermedia/model/AutoParcel_PlayerContact$Builder;->uuid:Ljava/lang/String;

    .line 138
    iget-object p1, p0, Lcom/intermedia/model/AutoParcel_PlayerContact$Builder;->set$:Ljava/util/BitSet;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-object p0
.end method
