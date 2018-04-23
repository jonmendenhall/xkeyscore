.class public Lcom/intermedia/av/media/HPMediaItemInteraction;
.super Ljava/lang/Object;
.source "HPMediaItemInteraction.java"


# instance fields
.field private chatMessage:Lcom/intermedia/model/ChatMessage;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "metadata"
    .end annotation
.end field

.field private itemId:Ljava/lang/String;

.field private senderId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/Gson;Lorg/json/JSONObject;)V
    .locals 1
    .param p1    # Lcom/google/gson/Gson;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "itemId"

    .line 35
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/av/media/HPMediaItemInteraction;->itemId:Ljava/lang/String;

    const-string v0, "userId"

    .line 36
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/av/media/HPMediaItemInteraction;->senderId:Ljava/lang/String;

    const-string v0, "metadata"

    .line 37
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-class v0, Lcom/intermedia/model/ChatMessage;

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/intermedia/model/ChatMessage;

    iput-object p1, p0, Lcom/intermedia/av/media/HPMediaItemInteraction;->chatMessage:Lcom/intermedia/model/ChatMessage;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 28
    instance-of p1, p1, Lcom/intermedia/av/media/HPMediaItemInteraction;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 28
    :cond_0
    instance-of v1, p1, Lcom/intermedia/av/media/HPMediaItemInteraction;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/intermedia/av/media/HPMediaItemInteraction;

    invoke-virtual {p1, p0}, Lcom/intermedia/av/media/HPMediaItemInteraction;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/intermedia/av/media/HPMediaItemInteraction;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/av/media/HPMediaItemInteraction;->getItemId()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/intermedia/av/media/HPMediaItemInteraction;->getSenderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/av/media/HPMediaItemInteraction;->getSenderId()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_1
    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/intermedia/av/media/HPMediaItemInteraction;->getChatMessage()Lcom/intermedia/model/ChatMessage;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/av/media/HPMediaItemInteraction;->getChatMessage()Lcom/intermedia/model/ChatMessage;

    move-result-object p1

    if-nez v1, :cond_7

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_7
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    :goto_2
    return v2

    :cond_8
    return v0
.end method

.method public getChatMessage()Lcom/intermedia/model/ChatMessage;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/intermedia/av/media/HPMediaItemInteraction;->chatMessage:Lcom/intermedia/model/ChatMessage;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/intermedia/av/media/HPMediaItemInteraction;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderId()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/intermedia/av/media/HPMediaItemInteraction;->senderId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 28
    invoke-virtual {p0}, Lcom/intermedia/av/media/HPMediaItemInteraction;->getItemId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/intermedia/av/media/HPMediaItemInteraction;->getSenderId()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/intermedia/av/media/HPMediaItemInteraction;->getChatMessage()Lcom/intermedia/model/ChatMessage;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public setChatMessage(Lcom/intermedia/model/ChatMessage;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/intermedia/av/media/HPMediaItemInteraction;->chatMessage:Lcom/intermedia/model/ChatMessage;

    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/intermedia/av/media/HPMediaItemInteraction;->itemId:Ljava/lang/String;

    return-void
.end method

.method public setSenderId(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/intermedia/av/media/HPMediaItemInteraction;->senderId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HPMediaItemInteraction(itemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/av/media/HPMediaItemInteraction;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", senderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/av/media/HPMediaItemInteraction;->getSenderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", chatMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/av/media/HPMediaItemInteraction;->getChatMessage()Lcom/intermedia/model/ChatMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
