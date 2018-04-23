.class public Lcom/intermedia/util/SoundEffectsPlayer;
.super Ljava/lang/Object;
.source "SoundEffectsPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;
    }
.end annotation


# static fields
.field private static instance:Lcom/intermedia/util/SoundEffectsPlayer;


# instance fields
.field private currentSound:I

.field private mSounds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private questionPlayer:Landroid/media/MediaPlayer;

.field private sp:Landroid/media/SoundPool;

.field private volume:F


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3e4ccccd    # 0.2f

    .line 34
    iput v0, p0, Lcom/intermedia/util/SoundEffectsPlayer;->volume:F

    .line 44
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v1, 0xa

    .line 45
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v2, 0x4

    .line 46
    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 49
    new-instance v2, Landroid/media/SoundPool$Builder;

    invoke-direct {v2}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 50
    invoke-virtual {v2, v1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v1

    .line 51
    invoke-virtual {v1, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/intermedia/util/SoundEffectsPlayer;->sp:Landroid/media/SoundPool;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/intermedia/util/SoundEffectsPlayer;
    .locals 2

    const-class v0, Lcom/intermedia/util/SoundEffectsPlayer;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/intermedia/util/SoundEffectsPlayer;->instance:Lcom/intermedia/util/SoundEffectsPlayer;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lcom/intermedia/util/SoundEffectsPlayer;

    invoke-direct {v1}, Lcom/intermedia/util/SoundEffectsPlayer;-><init>()V

    sput-object v1, Lcom/intermedia/util/SoundEffectsPlayer;->instance:Lcom/intermedia/util/SoundEffectsPlayer;

    .line 30
    :cond_0
    sget-object v1, Lcom/intermedia/util/SoundEffectsPlayer;->instance:Lcom/intermedia/util/SoundEffectsPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 26
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public loadSounds(Landroid/content/Context;)V
    .locals 5

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/intermedia/util/SoundEffectsPlayer;->mSounds:Ljava/util/Map;

    .line 61
    iget-object v0, p0, Lcom/intermedia/util/SoundEffectsPlayer;->mSounds:Ljava/util/Map;

    sget-object v1, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;->TAP:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    iget-object v2, p0, Lcom/intermedia/util/SoundEffectsPlayer;->sp:Landroid/media/SoundPool;

    const/4 v3, 0x1

    const v4, 0x7f10000c

    invoke-virtual {v2, p1, v4, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/intermedia/util/SoundEffectsPlayer;->mSounds:Ljava/util/Map;

    sget-object v1, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;->TAPELIMINATED:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    iget-object v2, p0, Lcom/intermedia/util/SoundEffectsPlayer;->sp:Landroid/media/SoundPool;

    const v4, 0x7f100001

    invoke-virtual {v2, p1, v4, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/intermedia/util/SoundEffectsPlayer;->mSounds:Ljava/util/Map;

    sget-object v1, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;->LOWTAP:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    iget-object v2, p0, Lcom/intermedia/util/SoundEffectsPlayer;->sp:Landroid/media/SoundPool;

    const v4, 0x7f100008

    invoke-virtual {v2, p1, v4, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/intermedia/util/SoundEffectsPlayer;->mSounds:Ljava/util/Map;

    sget-object v1, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;->ELIMINATED:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    iget-object v2, p0, Lcom/intermedia/util/SoundEffectsPlayer;->sp:Landroid/media/SoundPool;

    const/high16 v4, 0x7f100000

    invoke-virtual {v2, p1, v4, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/intermedia/util/SoundEffectsPlayer;->mSounds:Ljava/util/Map;

    sget-object v1, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;->RESULTS:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    iget-object v2, p0, Lcom/intermedia/util/SoundEffectsPlayer;->sp:Landroid/media/SoundPool;

    const v4, 0x7f10000a

    invoke-virtual {v2, p1, v4, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/intermedia/util/SoundEffectsPlayer;->mSounds:Ljava/util/Map;

    sget-object v1, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;->RIGHT:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    iget-object v2, p0, Lcom/intermedia/util/SoundEffectsPlayer;->sp:Landroid/media/SoundPool;

    const v4, 0x7f10000b

    invoke-virtual {v2, p1, v4, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/intermedia/util/SoundEffectsPlayer;->mSounds:Ljava/util/Map;

    sget-object v1, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;->WRONG:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    iget-object v2, p0, Lcom/intermedia/util/SoundEffectsPlayer;->sp:Landroid/media/SoundPool;

    const v4, 0x7f10000e

    invoke-virtual {v2, p1, v4, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/intermedia/util/SoundEffectsPlayer;->mSounds:Ljava/util/Map;

    sget-object v1, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;->EXTRALIFE:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    iget-object v2, p0, Lcom/intermedia/util/SoundEffectsPlayer;->sp:Landroid/media/SoundPool;

    const v4, 0x7f100002

    invoke-virtual {v2, p1, v4, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/intermedia/util/SoundEffectsPlayer;->mSounds:Ljava/util/Map;

    sget-object v1, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;->GIFTDROP:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    iget-object v2, p0, Lcom/intermedia/util/SoundEffectsPlayer;->sp:Landroid/media/SoundPool;

    const v4, 0x7f100003

    invoke-virtual {v2, p1, v4, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/intermedia/util/SoundEffectsPlayer;->mSounds:Ljava/util/Map;

    sget-object v1, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;->GIFTDROPEXTRALIFE:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    iget-object v2, p0, Lcom/intermedia/util/SoundEffectsPlayer;->sp:Landroid/media/SoundPool;

    const v4, 0x7f100005

    invoke-virtual {v2, p1, v4, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/intermedia/util/SoundEffectsPlayer;->mSounds:Ljava/util/Map;

    sget-object v1, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;->GIFTDROPCASH:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    iget-object v2, p0, Lcom/intermedia/util/SoundEffectsPlayer;->sp:Landroid/media/SoundPool;

    const v4, 0x7f100006

    invoke-virtual {v2, p1, v4, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/intermedia/util/SoundEffectsPlayer;->mSounds:Ljava/util/Map;

    sget-object v1, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;->GIFTDROPEMPTY:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    iget-object v2, p0, Lcom/intermedia/util/SoundEffectsPlayer;->sp:Landroid/media/SoundPool;

    const v4, 0x7f100004

    invoke-virtual {v2, p1, v4, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "audio"

    .line 74
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    return-void
.end method

.method public play(Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;)V
    .locals 8

    .line 86
    iget-object v0, p0, Lcom/intermedia/util/SoundEffectsPlayer;->mSounds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 88
    iget-object v1, p0, Lcom/intermedia/util/SoundEffectsPlayer;->sp:Landroid/media/SoundPool;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/intermedia/util/SoundEffectsPlayer;->volume:F

    iget v4, p0, Lcom/intermedia/util/SoundEffectsPlayer;->volume:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result p1

    iput p1, p0, Lcom/intermedia/util/SoundEffectsPlayer;->currentSound:I

    goto :goto_0

    .line 89
    :cond_0
    sget-object v0, Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;->QUESTION:Lcom/intermedia/util/SoundEffectsPlayer$SoundEffect;

    if-ne p1, v0, :cond_1

    .line 90
    iget-object p1, p0, Lcom/intermedia/util/SoundEffectsPlayer;->questionPlayer:Landroid/media/MediaPlayer;

    iget v0, p0, Lcom/intermedia/util/SoundEffectsPlayer;->volume:F

    iget v1, p0, Lcom/intermedia/util/SoundEffectsPlayer;->volume:F

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 91
    iget-object p1, p0, Lcom/intermedia/util/SoundEffectsPlayer;->questionPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public prepareQuestionAudio(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f100009

    .line 80
    invoke-static {p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/intermedia/util/SoundEffectsPlayer;->questionPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method public setVolume(F)V
    .locals 0

    .line 103
    iput p1, p0, Lcom/intermedia/util/SoundEffectsPlayer;->volume:F

    return-void
.end method

.method public stop()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/intermedia/util/SoundEffectsPlayer;->sp:Landroid/media/SoundPool;

    iget v1, p0, Lcom/intermedia/util/SoundEffectsPlayer;->currentSound:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 97
    iget-object v0, p0, Lcom/intermedia/util/SoundEffectsPlayer;->questionPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/intermedia/util/SoundEffectsPlayer;->questionPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    return-void
.end method
