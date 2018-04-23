.class public final Lcom/google/android/gms/internal/zzeha;
.super Ljava/lang/Object;


# static fields
.field private static final zzmyi:Lcom/google/android/gms/internal/zzehq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzehq<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzmyj:Lcom/google/android/gms/internal/zzehq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzehq<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzmyk:Lcom/google/android/gms/internal/zzehm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzehm<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzmyl:Lcom/google/android/gms/internal/zzehm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzehm<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzmyh:Lcom/google/android/gms/internal/zzehm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzehm<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzehb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzehb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzeha;->zzmyi:Lcom/google/android/gms/internal/zzehq;

    new-instance v0, Lcom/google/android/gms/internal/zzehc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzehc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzeha;->zzmyj:Lcom/google/android/gms/internal/zzehq;

    new-instance v0, Lcom/google/android/gms/internal/zzehm;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzehm;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/zzeha;->zzmyk:Lcom/google/android/gms/internal/zzehm;

    new-instance v0, Lcom/google/android/gms/internal/zzehm;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzehm;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/zzeha;->zzmyl:Lcom/google/android/gms/internal/zzehm;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/zzehm;->zzbxw()Lcom/google/android/gms/internal/zzehm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeha;->zzmyh:Lcom/google/android/gms/internal/zzehm;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzehm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzehm<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeha;->zzmyh:Lcom/google/android/gms/internal/zzehm;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzeha;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzeha;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeha;->zzmyh:Lcom/google/android/gms/internal/zzehm;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzeha;->zzmyh:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzehm;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeha;->zzmyh:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzehm;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeha;->zzmyh:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzehm;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xe

    add-int/2addr v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "{PruneForest:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzehp;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/android/gms/internal/zzehp<",
            "Ljava/lang/Void;",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeha;->zzmyh:Lcom/google/android/gms/internal/zzehm;

    new-instance v1, Lcom/google/android/gms/internal/zzehd;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/zzehd;-><init>(Lcom/google/android/gms/internal/zzeha;Lcom/google/android/gms/internal/zzehp;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzehm;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/zzehp;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzbxs()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeha;->zzmyh:Lcom/google/android/gms/internal/zzehm;

    sget-object v1, Lcom/google/android/gms/internal/zzeha;->zzmyj:Lcom/google/android/gms/internal/zzehq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzehm;->zzb(Lcom/google/android/gms/internal/zzehq;)Z

    move-result v0

    return v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzeha;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeha;->zzmyh:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzehm;->zze(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzehm;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/zzehm;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeha;->zzmyh:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzehm;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/zzehm;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzehm;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeha;->zzmyh:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzehm;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/zzedk;->zzbwe()Lcom/google/android/gms/internal/zzedk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeha;->zzmyh:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzehm;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzehm;->zzb(Lcom/google/android/gms/internal/zzedk;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzehm;

    move-result-object p1

    :cond_1
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/zzeha;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzeha;-><init>(Lcom/google/android/gms/internal/zzehm;)V

    return-object v0
.end method

.method public final zzv(Lcom/google/android/gms/internal/zzedk;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeha;->zzmyh:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzehm;->zzag(Lcom/google/android/gms/internal/zzedk;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzw(Lcom/google/android/gms/internal/zzedk;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeha;->zzmyh:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzehm;->zzag(Lcom/google/android/gms/internal/zzedk;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzx(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzeha;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeha;->zzmyh:Lcom/google/android/gms/internal/zzehm;

    sget-object v1, Lcom/google/android/gms/internal/zzeha;->zzmyi:Lcom/google/android/gms/internal/zzehq;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzehm;->zzb(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzehq;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t prune path that was kept previously!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeha;->zzmyh:Lcom/google/android/gms/internal/zzehm;

    sget-object v1, Lcom/google/android/gms/internal/zzeha;->zzmyj:Lcom/google/android/gms/internal/zzehq;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzehm;->zzb(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzehq;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeha;->zzmyh:Lcom/google/android/gms/internal/zzehm;

    sget-object v1, Lcom/google/android/gms/internal/zzeha;->zzmyk:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzehm;->zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzehm;)Lcom/google/android/gms/internal/zzehm;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/zzeha;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzeha;-><init>(Lcom/google/android/gms/internal/zzehm;)V

    return-object v0
.end method

.method public final zzy(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzeha;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeha;->zzmyh:Lcom/google/android/gms/internal/zzehm;

    sget-object v1, Lcom/google/android/gms/internal/zzeha;->zzmyi:Lcom/google/android/gms/internal/zzehq;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzehm;->zzb(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzehq;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeha;->zzmyh:Lcom/google/android/gms/internal/zzehm;

    sget-object v1, Lcom/google/android/gms/internal/zzeha;->zzmyl:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzehm;->zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzehm;)Lcom/google/android/gms/internal/zzehm;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/zzeha;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzeha;-><init>(Lcom/google/android/gms/internal/zzehm;)V

    return-object v0
.end method
