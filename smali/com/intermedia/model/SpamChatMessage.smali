.class public Lcom/intermedia/model/SpamChatMessage;
.super Lcom/intermedia/model/ChatMessage;
.source "SpamChatMessage.java"


# direct methods
.method public constructor <init>()V
    .locals 6

    const-string v1, "Please do not comment repeatedly."

    const-string v2, ""

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/intermedia/model/ChatMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 11
    instance-of p1, p1, Lcom/intermedia/model/SpamChatMessage;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 11
    :cond_0
    instance-of v1, p1, Lcom/intermedia/model/SpamChatMessage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/intermedia/model/SpamChatMessage;

    invoke-virtual {p1, p0}, Lcom/intermedia/model/SpamChatMessage;->canEqual(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "SpamChatMessage()"

    return-object v0
.end method
