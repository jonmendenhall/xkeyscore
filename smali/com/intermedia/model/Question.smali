.class public Lcom/intermedia/model/Question;
.super Ljava/lang/Object;
.source "Question.java"


# instance fields
.field private answers:[Lcom/intermedia/model/HQAnswer;

.field private gson:Lcom/google/gson/Gson;

.field private questionCount:I

.field private questionId:J

.field private questionNumber:I

.field private submittedAnswerId:I

.field private text:Ljava/lang/String;

.field private timeLeftMs:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/intermedia/model/Question;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/intermedia/model/Question;->gson:Lcom/google/gson/Gson;

    const-string v0, "questionId"

    .line 32
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/intermedia/model/Question;->questionId:J

    const-string v0, "questionNumber"

    .line 33
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/intermedia/model/Question;->questionNumber:I

    const-string v0, "questionCount"

    .line 34
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/intermedia/model/Question;->questionCount:I

    const-string v0, "timeLeftMs"

    .line 35
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/intermedia/model/Question;->timeLeftMs:I

    const-string v0, "question"

    .line 36
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/model/Question;->text:Ljava/lang/String;

    const-string v0, "submittedAnswerId"

    .line 38
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/intermedia/model/Question;->submittedAnswerId:I

    const-string v0, "answers"

    .line 39
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 40
    iget-object v0, p0, Lcom/intermedia/model/Question;->gson:Lcom/google/gson/Gson;

    const-class v1, [Lcom/intermedia/model/HQAnswer;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/intermedia/model/HQAnswer;

    iput-object p1, p0, Lcom/intermedia/model/Question;->answers:[Lcom/intermedia/model/HQAnswer;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 20
    instance-of p1, p1, Lcom/intermedia/model/Question;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 20
    :cond_0
    instance-of v1, p1, Lcom/intermedia/model/Question;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/intermedia/model/Question;

    invoke-virtual {p1, p0}, Lcom/intermedia/model/Question;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/intermedia/model/Question;->getQuestionId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/intermedia/model/Question;->getQuestionId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/intermedia/model/Question;->getTimeLeftMs()I

    move-result v1

    invoke-virtual {p1}, Lcom/intermedia/model/Question;->getTimeLeftMs()I

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/intermedia/model/Question;->getQuestionNumber()I

    move-result v1

    invoke-virtual {p1}, Lcom/intermedia/model/Question;->getQuestionNumber()I

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/intermedia/model/Question;->getQuestionCount()I

    move-result v1

    invoke-virtual {p1}, Lcom/intermedia/model/Question;->getQuestionCount()I

    move-result v3

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/intermedia/model/Question;->getSubmittedAnswerId()I

    move-result v1

    invoke-virtual {p1}, Lcom/intermedia/model/Question;->getSubmittedAnswerId()I

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/intermedia/model/Question;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/Question;->getText()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_8

    if-eqz v3, :cond_9

    goto :goto_0

    :cond_8
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :goto_0
    return v2

    :cond_9
    invoke-virtual {p0}, Lcom/intermedia/model/Question;->getAnswers()[Lcom/intermedia/model/HQAnswer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/Question;->getAnswers()[Lcom/intermedia/model/HQAnswer;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/intermedia/model/Question;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {p1}, Lcom/intermedia/model/Question;->getGson()Lcom/google/gson/Gson;

    move-result-object p1

    if-nez v1, :cond_b

    if-eqz p1, :cond_c

    goto :goto_1

    :cond_b
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    :goto_1
    return v2

    :cond_c
    return v0
.end method

.method public getAnswers()[Lcom/intermedia/model/HQAnswer;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/intermedia/model/Question;->answers:[Lcom/intermedia/model/HQAnswer;

    return-object v0
.end method

.method public getGson()Lcom/google/gson/Gson;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/intermedia/model/Question;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method public getQuestionCount()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/intermedia/model/Question;->questionCount:I

    return v0
.end method

.method public getQuestionId()J
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/intermedia/model/Question;->questionId:J

    return-wide v0
.end method

.method public getQuestionNumber()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/intermedia/model/Question;->questionNumber:I

    return v0
.end method

.method public getSubmittedAnswerId()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/intermedia/model/Question;->submittedAnswerId:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/intermedia/model/Question;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeLeftMs()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/intermedia/model/Question;->timeLeftMs:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 20
    invoke-virtual {p0}, Lcom/intermedia/model/Question;->getQuestionId()J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/intermedia/model/Question;->getTimeLeftMs()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/intermedia/model/Question;->getQuestionNumber()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/intermedia/model/Question;->getQuestionCount()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/intermedia/model/Question;->getSubmittedAnswerId()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/intermedia/model/Question;->getText()Ljava/lang/String;

    move-result-object v2

    mul-int/2addr v0, v1

    const/16 v3, 0x2b

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/intermedia/model/Question;->getAnswers()[Lcom/intermedia/model/HQAnswer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/intermedia/model/Question;->getGson()Lcom/google/gson/Gson;

    move-result-object v2

    mul-int/2addr v0, v1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    return v0
.end method

.method public setAnswers([Lcom/intermedia/model/HQAnswer;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/intermedia/model/Question;->answers:[Lcom/intermedia/model/HQAnswer;

    return-void
.end method

.method public setGson(Lcom/google/gson/Gson;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/intermedia/model/Question;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public setQuestionCount(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/intermedia/model/Question;->questionCount:I

    return-void
.end method

.method public setQuestionId(J)V
    .locals 0

    .line 17
    iput-wide p1, p0, Lcom/intermedia/model/Question;->questionId:J

    return-void
.end method

.method public setQuestionNumber(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/intermedia/model/Question;->questionNumber:I

    return-void
.end method

.method public setSubmittedAnswerId(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/intermedia/model/Question;->submittedAnswerId:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/intermedia/model/Question;->text:Ljava/lang/String;

    return-void
.end method

.method public setTimeLeftMs(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/intermedia/model/Question;->timeLeftMs:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Question(questionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/Question;->getQuestionId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", timeLeftMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/Question;->getTimeLeftMs()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", questionNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/Question;->getQuestionNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", questionCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/Question;->getQuestionCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", submittedAnswerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/Question;->getSubmittedAnswerId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/Question;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", answers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/Question;->getAnswers()[Lcom/intermedia/model/HQAnswer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gson="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/intermedia/model/Question;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
