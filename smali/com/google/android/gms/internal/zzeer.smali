.class public final Lcom/google/android/gms/internal/zzeer;
.super Ljava/lang/Object;


# static fields
.field private static final zzmuz:Lcom/google/android/gms/internal/zzeer;


# instance fields
.field private final zzmva:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/zzedc;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzedn;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzeer;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzeer;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzeer;->zzmuz:Lcom/google/android/gms/internal/zzeer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeer;->zzmva:Ljava/util/Map;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/zzedc;Lcom/google/android/gms/internal/zzeeq;Lcom/google/firebase/database/FirebaseDatabase;)Lcom/google/android/gms/internal/zzedn;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzeer;->zzmuz:Lcom/google/android/gms/internal/zzeer;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzeer;->zzb(Lcom/google/android/gms/internal/zzedc;Lcom/google/android/gms/internal/zzeeq;Lcom/google/firebase/database/FirebaseDatabase;)Lcom/google/android/gms/internal/zzedn;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzeer;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzeer;->zzmva:Ljava/util/Map;

    return-object p0
.end method

.method private final zzb(Lcom/google/android/gms/internal/zzedc;Lcom/google/android/gms/internal/zzeeq;Lcom/google/firebase/database/FirebaseDatabase;)Lcom/google/android/gms/internal/zzedn;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedc;->zzbvl()V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzeeq;->host:Ljava/lang/String;

    iget-object v1, p2, Lcom/google/android/gms/internal/zzeeq;->zzjrg:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x9

    add-int/2addr v3, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeer;->zzmva:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzeer;->zzmva:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzeer;->zzmva:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzeer;->zzmva:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Lcom/google/android/gms/internal/zzedn;

    invoke-direct {v3, p2, p1, p3}, Lcom/google/android/gms/internal/zzedn;-><init>(Lcom/google/android/gms/internal/zzeeq;Lcom/google/android/gms/internal/zzedc;Lcom/google/firebase/database/FirebaseDatabase;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-object v3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "createLocalRepo() called for existing repo."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static zzd(Lcom/google/android/gms/internal/zzedc;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/zzeer;->zzmuz:Lcom/google/android/gms/internal/zzeer;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzedc;->zzmse:Lcom/google/android/gms/internal/zzeew;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/zzeeu;

    invoke-direct {v2, v0, p0}, Lcom/google/android/gms/internal/zzeeu;-><init>(Lcom/google/android/gms/internal/zzeer;Lcom/google/android/gms/internal/zzedc;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzeew;->zzo(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static zze(Lcom/google/android/gms/internal/zzedc;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/zzeer;->zzmuz:Lcom/google/android/gms/internal/zzeer;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzedc;->zzmse:Lcom/google/android/gms/internal/zzeew;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/zzeev;

    invoke-direct {v2, v0, p0}, Lcom/google/android/gms/internal/zzeev;-><init>(Lcom/google/android/gms/internal/zzeer;Lcom/google/android/gms/internal/zzedc;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzeew;->zzo(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static zzk(Lcom/google/android/gms/internal/zzedn;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzees;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzees;-><init>(Lcom/google/android/gms/internal/zzedn;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzedn;->zzo(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static zzl(Lcom/google/android/gms/internal/zzedn;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzeet;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzeet;-><init>(Lcom/google/android/gms/internal/zzedn;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzedn;->zzo(Ljava/lang/Runnable;)V

    return-void
.end method
