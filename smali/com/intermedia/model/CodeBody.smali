.class public final Lcom/intermedia/model/CodeBody;
.super Ljava/lang/Object;
.source "CodeBody.java"


# instance fields
.field private final code:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "code"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_0
    iput-object p1, p0, Lcom/intermedia/model/CodeBody;->code:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 10
    :cond_0
    instance-of v1, p1, Lcom/intermedia/model/CodeBody;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/intermedia/model/CodeBody;

    invoke-virtual {p0}, Lcom/intermedia/model/CodeBody;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/CodeBody;->getCode()Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_2

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    :goto_0
    return v2

    :cond_3
    return v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/intermedia/model/CodeBody;->code:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 10
    invoke-virtual {p0}, Lcom/intermedia/model/CodeBody;->getCode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x3b

    add-int/2addr v1, v0

    return v1
.end method
