.class public final Lcom/intermedia/model/PhoneBody;
.super Ljava/lang/Object;
.source "PhoneBody.java"


# instance fields
.field private final method:Ljava/lang/String;

.field private final phone:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "method"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p2, :cond_1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "phone"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_1
    iput-object p1, p0, Lcom/intermedia/model/PhoneBody;->method:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/intermedia/model/PhoneBody;->phone:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 10
    :cond_0
    instance-of v1, p1, Lcom/intermedia/model/PhoneBody;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/intermedia/model/PhoneBody;

    invoke-virtual {p0}, Lcom/intermedia/model/PhoneBody;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/PhoneBody;->getMethod()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_2

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :goto_0
    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/intermedia/model/PhoneBody;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/PhoneBody;->getPhone()Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_4

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_4
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    :goto_1
    return v2

    :cond_5
    return v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/intermedia/model/PhoneBody;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/intermedia/model/PhoneBody;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 10
    invoke-virtual {p0}, Lcom/intermedia/model/PhoneBody;->getMethod()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/intermedia/model/PhoneBody;->getPhone()Ljava/lang/String;

    move-result-object v3

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method
