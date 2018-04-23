.class public Lcom/intermedia/model/HQAnswer;
.super Ljava/lang/Object;
.source "HQAnswer.java"


# instance fields
.field private answerId:I

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 17
    instance-of p1, p1, Lcom/intermedia/model/HQAnswer;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 17
    :cond_0
    instance-of v1, p1, Lcom/intermedia/model/HQAnswer;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/intermedia/model/HQAnswer;

    invoke-virtual {p1, p0}, Lcom/intermedia/model/HQAnswer;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/intermedia/model/HQAnswer;->getAnswerId()I

    move-result v1

    invoke-virtual {p1}, Lcom/intermedia/model/HQAnswer;->getAnswerId()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/intermedia/model/HQAnswer;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/HQAnswer;->getText()Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_4

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_4
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    :goto_0
    return v2

    :cond_5
    return v0
.end method

.method public getAnswerId()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/intermedia/model/HQAnswer;->answerId:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/intermedia/model/HQAnswer;->text:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 17
    invoke-virtual {p0}, Lcom/intermedia/model/HQAnswer;->getAnswerId()I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/intermedia/model/HQAnswer;->getText()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_0

    const/16 v1, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public setAnswerId(I)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/intermedia/model/HQAnswer;->answerId:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/intermedia/model/HQAnswer;->text:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HQAnswer(answerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/HQAnswer;->getAnswerId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/HQAnswer;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
