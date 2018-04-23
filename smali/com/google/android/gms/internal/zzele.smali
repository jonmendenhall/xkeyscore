.class final Lcom/google/android/gms/internal/zzele;
.super Ljava/lang/Object;


# instance fields
.field private final random:Ljava/util/Random;

.field private final zzndy:Ljava/lang/Thread;

.field private zznep:Lcom/google/android/gms/internal/zzeku;

.field private volatile zznes:Z

.field private zznet:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private zzneu:Z

.field private zznev:Ljava/nio/channels/WritableByteChannel;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeku;Ljava/lang/String;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzele;->random:Ljava/util/Random;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzele;->zznes:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzele;->zzneu:Z

    invoke-static {}, Lcom/google/android/gms/internal/zzeku;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzelf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzelf;-><init>(Lcom/google/android/gms/internal/zzele;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzele;->zzndy:Ljava/lang/Thread;

    invoke-static {}, Lcom/google/android/gms/internal/zzeku;->zzcas()Lcom/google/android/gms/internal/zzekt;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzele;->zzndy:Ljava/lang/Thread;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x12

    add-int/2addr v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Writer-"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/zzekt;->zza(Ljava/lang/Thread;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzele;->zznep:Lcom/google/android/gms/internal/zzeku;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzele;->zznet:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzele;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzele;->zzcbd()V

    return-void
.end method

.method private final zzcbb()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzele;->zznet:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzele;->zznev:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method private final zzcbd()V
    .locals 3

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzele;->zznes:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzele;->zzcbb()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzele;->zznet:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzele;->zzcbb()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    :cond_1
    return-void

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzela;

    const-string v2, "IO Exception"

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/zzela;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzele;->zznep:Lcom/google/android/gms/internal/zzeku;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzeku;->zzb(Lcom/google/android/gms/internal/zzela;)V

    return-void
.end method


# virtual methods
.method final declared-synchronized zza(BZ[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 p2, 0x6

    :try_start_0
    array-length v0, p3

    const v1, 0xffff

    const/16 v2, 0x7e

    const/16 v3, 0x8

    if-lt v0, v2, :cond_1

    if-gt v0, v1, :cond_0

    move p2, v3

    goto :goto_0

    :cond_0
    const/16 p2, 0xe

    :cond_1
    :goto_0
    array-length v4, p3

    add-int/2addr v4, p2

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    const/16 v4, -0x80

    or-int/2addr v4, p1

    int-to-byte v4, v4

    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    if-ge v0, v2, :cond_2

    const/16 v1, 0x80

    or-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_2
    if-gt v0, v1, :cond_3

    const/4 v1, -0x2

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-short v0, v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_3
    const/4 v1, -0x1

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_1
    const/4 v0, 0x4

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/google/android/gms/internal/zzele;->random:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_2
    array-length v1, p3

    if-ge v4, v1, :cond_4

    aget-byte v1, p3, v4

    rem-int/lit8 v2, v4, 0x4

    aget-byte v2, v0, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-boolean p3, p0, Lcom/google/android/gms/internal/zzele;->zznes:Z

    if-eqz p3, :cond_6

    iget-boolean p3, p0, Lcom/google/android/gms/internal/zzele;->zzneu:Z

    if-nez p3, :cond_5

    if-eq p1, v3, :cond_6

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/zzela;

    const-string p2, "Shouldn\'t be sending"

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/zzela;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    if-ne p1, v3, :cond_7

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzele;->zzneu:Z

    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/internal/zzele;->zznet:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1, p2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final zzb(Ljava/io/OutputStream;)V
    .locals 0

    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzele;->zznev:Ljava/nio/channels/WritableByteChannel;

    return-void
.end method

.method final zzcbc()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzele;->zznes:Z

    return-void
.end method

.method final zzcbe()Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzele;->zzndy:Ljava/lang/Thread;

    return-object v0
.end method
