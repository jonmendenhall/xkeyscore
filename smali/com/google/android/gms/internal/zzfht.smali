.class final Lcom/google/android/gms/internal/zzfht;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/google/android/gms/internal/zzfey;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzpjn:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/google/android/gms/internal/zzfhq;",
            ">;"
        }
    .end annotation
.end field

.field private zzpjo:Lcom/google/android/gms/internal/zzfey;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzfes;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfht;->zzpjn:Ljava/util/Stack;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzfht;->zzbb(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzfey;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfht;->zzpjo:Lcom/google/android/gms/internal/zzfey;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzfes;Lcom/google/android/gms/internal/zzfhr;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzfht;-><init>(Lcom/google/android/gms/internal/zzfes;)V

    return-void
.end method

.method private final zzbb(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzfey;
    .locals 1

    :goto_0
    instance-of v0, p1, Lcom/google/android/gms/internal/zzfhq;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzfhq;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfht;->zzpjn:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfhq;->zza(Lcom/google/android/gms/internal/zzfhq;)Lcom/google/android/gms/internal/zzfes;

    move-result-object p1

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/zzfey;

    return-object p1
.end method

.method private final zzczc()Lcom/google/android/gms/internal/zzfey;
    .locals 2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfht;->zzpjn:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfht;->zzpjn:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfhq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfhq;->zzb(Lcom/google/android/gms/internal/zzfhq;)Lcom/google/android/gms/internal/zzfes;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzfht;->zzbb(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzfey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfes;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfht;->zzpjo:Lcom/google/android/gms/internal/zzfey;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfht;->zzpjo:Lcom/google/android/gms/internal/zzfey;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfht;->zzpjo:Lcom/google/android/gms/internal/zzfey;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfht;->zzczc()Lcom/google/android/gms/internal/zzfey;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzfht;->zzpjo:Lcom/google/android/gms/internal/zzfey;

    return-object v0
.end method

.method public final remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
