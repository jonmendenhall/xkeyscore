.class public Lcom/intermedia/game/PlayerStatusRepository;
.super Ljava/lang/Object;
.source "PlayerStatusRepository.java"


# static fields
.field static final ELIMINATED:Ljava/lang/String; = "eliminated"

.field private static final JOINED:Ljava/lang/String; = "joined"

.field private static final LAST_ANSWER:Ljava/lang/String; = "last_answer"

.field private static final LAST_QUESTION_RECEIVED:Ljava/lang/String; = "last_question_received"

.field static final MODAL_ELIMINATED:Ljava/lang/String; = "eliminated"

.field static final MODAL_EXTRA_LIFE_OPT_IN:Ljava/lang/String; = "extra_life_opt_in"

.field static final MODAL_LATE:Ljava/lang/String; = "late"

.field static final MODAL_WELCOME_BACK:Ljava/lang/String; = "welcome_back"

.field static final NOT_JOINED:Ljava/lang/String; = "not_joined"

.field private static final PREFERENCES:Ljava/lang/String; = "com.intermedia.hq.player_status"


# instance fields
.field private final gameId:J

.field private final modalsKey:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final questionResultsReceived:Ljava/util/LinkedHashSet;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final questionsAnswered:Ljava/util/LinkedHashSet;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final questionsReceived:Ljava/util/LinkedHashSet;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final sharedPrefs:Landroid/content/SharedPreferences;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/intermedia/game/PlayerStatusRepository;->questionResultsReceived:Ljava/util/LinkedHashSet;

    .line 29
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/intermedia/game/PlayerStatusRepository;->questionsAnswered:Ljava/util/LinkedHashSet;

    .line 30
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/intermedia/game/PlayerStatusRepository;->questionsReceived:Ljava/util/LinkedHashSet;

    .line 35
    iput-wide p2, p0, Lcom/intermedia/game/PlayerStatusRepository;->gameId:J

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "-modals"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/intermedia/game/PlayerStatusRepository;->modalsKey:Ljava/lang/String;

    const-string p2, "com.intermedia.hq.player_status"

    const/4 p3, 0x0

    .line 37
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/game/PlayerStatusRepository;->sharedPrefs:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method addQuestionAnswered(JJ)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/intermedia/game/PlayerStatusRepository;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_answer"

    invoke-interface {v0, v1, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 81
    iget-object p3, p0, Lcom/intermedia/game/PlayerStatusRepository;->questionsAnswered:Ljava/util/LinkedHashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addQuestionReceived(J)V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/intermedia/game/PlayerStatusRepository;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_question_received"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 90
    iget-object v0, p0, Lcom/intermedia/game/PlayerStatusRepository;->questionsReceived:Ljava/util/LinkedHashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addQuestionResult(J)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/intermedia/game/PlayerStatusRepository;->questionResultsReceived:Ljava/util/LinkedHashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method cancelQuestion(J)V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/intermedia/game/PlayerStatusRepository;->questionsReceived:Ljava/util/LinkedHashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lcom/intermedia/game/PlayerStatusRepository;->questionsAnswered:Ljava/util/LinkedHashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 108
    iget-object p1, p0, Lcom/intermedia/game/PlayerStatusRepository;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "last_answer"

    const-wide/16 v0, 0x0

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/intermedia/game/PlayerStatusRepository;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method getLastAnswer()J
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/intermedia/game/PlayerStatusRepository;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "last_answer"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method getLastQuestionReceived()J
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/intermedia/game/PlayerStatusRepository;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "last_question_received"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method getModalsShown()Ljava/util/Set;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/intermedia/game/PlayerStatusRepository;->sharedPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/intermedia/game/PlayerStatusRepository;->modalsKey:Ljava/lang/String;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getPlayerIsInTheGame()Z
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/intermedia/game/PlayerStatusRepository;->sharedPrefs:Landroid/content/SharedPreferences;

    iget-wide v1, p0, Lcom/intermedia/game/PlayerStatusRepository;->gameId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "not_joined"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "not_joined"

    .line 56
    invoke-static {v0, v1}, Lcom/intermedia/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "joined"

    invoke-static {v0, v1}, Lcom/intermedia/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method getPlayerStatus()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/intermedia/game/PlayerStatusRepository;->sharedPrefs:Landroid/content/SharedPreferences;

    iget-wide v1, p0, Lcom/intermedia/game/PlayerStatusRepository;->gameId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "not_joined"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method hasAnsweredQuestion(J)Z
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/intermedia/game/PlayerStatusRepository;->questionsAnswered:Ljava/util/LinkedHashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method hasReceivedQuestion(J)Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/intermedia/game/PlayerStatusRepository;->questionsReceived:Ljava/util/LinkedHashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method hasReceivedQuestionResult(J)Z
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/intermedia/game/PlayerStatusRepository;->questionResultsReceived:Ljava/util/LinkedHashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method setModalShown(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 61
    iget-object v1, p0, Lcom/intermedia/game/PlayerStatusRepository;->sharedPrefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/intermedia/game/PlayerStatusRepository;->modalsKey:Ljava/lang/String;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 62
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object p1, p0, Lcom/intermedia/game/PlayerStatusRepository;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v1, p0, Lcom/intermedia/game/PlayerStatusRepository;->modalsKey:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method setPlayerIsInTheGame(Z)V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/intermedia/game/PlayerStatusRepository;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-wide v1, p0, Lcom/intermedia/game/PlayerStatusRepository;->gameId:J

    .line 46
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string p1, "joined"

    goto :goto_0

    :cond_0
    const-string p1, "eliminated"

    :goto_0
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
