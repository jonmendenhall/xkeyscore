.class public final Lcom/google/android/gms/internal/zzdzw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzedm;


# instance fields
.field private final zzajx:Landroid/content/Context;

.field private final zzmlg:Lcom/google/firebase/FirebaseApp;

.field private final zzmll:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdzw;->zzmll:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdzw;->zzmlg:Lcom/google/firebase/FirebaseApp;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzdzw;->zzmlg:Lcom/google/firebase/FirebaseApp;

    if-nez p1, :cond_0

    const-string p1, "FirebaseDatabase"

    const-string v0, "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "FirebaseDatabase"

    const-string v0, "ERROR: You must call FirebaseApp.initializeApp() before using Firebase Database."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "FirebaseDatabase"

    const-string v0, "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "You need to call FirebaseApp.initializeApp() before using Firebase Database."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzdzw;->zzmlg:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdzw;->zzajx:Landroid/content/Context;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdzw;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzdzw;->zzajx:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzedc;Lcom/google/android/gms/internal/zzebi;Lcom/google/android/gms/internal/zzebk;Lcom/google/android/gms/internal/zzebn;)Lcom/google/android/gms/internal/zzebm;
    .locals 9

    new-instance v8, Lcom/google/firebase/database/connection/idl/zzc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedc;->zzbvy()Lcom/google/android/gms/internal/zzeje;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedc;->isPersistenceEnabled()Z

    move-result v4

    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getSdkVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedc;->zzbuf()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdzw;->zzbta()Ljava/io/File;

    move-result-object v7

    const/4 v3, 0x0

    move-object v0, v8

    move-object v1, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/database/connection/idl/zzc;-><init>(Lcom/google/android/gms/internal/zzebk;Lcom/google/android/gms/internal/zzeje;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzdzw;->zzajx:Landroid/content/Context;

    invoke-static {p1, v8, p2, p4}, Lcom/google/firebase/database/connection/idl/zzf;->zza(Landroid/content/Context;Lcom/google/firebase/database/connection/idl/zzc;Lcom/google/android/gms/internal/zzebi;Lcom/google/android/gms/internal/zzebn;)Lcom/google/firebase/database/connection/idl/zzf;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzdzw;->zzmlg:Lcom/google/firebase/FirebaseApp;

    new-instance p3, Lcom/google/android/gms/internal/zzdzz;

    invoke-direct {p3, p0, p1}, Lcom/google/android/gms/internal/zzdzz;-><init>(Lcom/google/android/gms/internal/zzdzw;Lcom/google/android/gms/internal/zzebm;)V

    invoke-virtual {p2, p3}, Lcom/google/firebase/FirebaseApp;->zza(Lcom/google/firebase/FirebaseApp$zza;)V

    return-object p1
.end method

.method public final zza(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/zzect;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzdzq;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdzw;->zzmlg:Lcom/google/firebase/FirebaseApp;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/zzdzq;-><init>(Lcom/google/firebase/FirebaseApp;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzedc;)Lcom/google/android/gms/internal/zzedj;
    .locals 0

    new-instance p1, Lcom/google/android/gms/internal/zzdzv;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzdzv;-><init>()V

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzedc;Ljava/lang/String;)Lcom/google/android/gms/internal/zzegy;
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedc;->zzbwb()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v2, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdzw;->zzmll:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Lcom/google/firebase/database/DatabaseException;

    const/16 p2, 0x2f

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr p2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "SessionPersistenceKey \'"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' has already been used."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdzw;->zzmll:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/gms/internal/zzeaa;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdzw;->zzajx:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/gms/internal/zzeaa;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzedc;Ljava/lang/String;)V

    new-instance p2, Lcom/google/android/gms/internal/zzegw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedc;->zzbvz()J

    move-result-wide v1

    invoke-direct {p2, v1, v2}, Lcom/google/android/gms/internal/zzegw;-><init>(J)V

    new-instance v1, Lcom/google/android/gms/internal/zzegv;

    invoke-direct {v1, p1, v0, p2}, Lcom/google/android/gms/internal/zzegv;-><init>(Lcom/google/android/gms/internal/zzedc;Lcom/google/android/gms/internal/zzegz;Lcom/google/android/gms/internal/zzegt;)V

    return-object v1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzedc;Lcom/google/android/gms/internal/zzeje;Ljava/util/List;)Lcom/google/android/gms/internal/zzejd;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzedc;",
            "Lcom/google/android/gms/internal/zzeje;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/zzejd;"
        }
    .end annotation

    new-instance p1, Lcom/google/android/gms/internal/zzeiz;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/zzeiz;-><init>(Lcom/google/android/gms/internal/zzeje;Ljava/util/List;)V

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzedc;)Lcom/google/android/gms/internal/zzeew;
    .locals 1

    const-string v0, "RunLoop"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzedc;->zzpv(Ljava/lang/String;)Lcom/google/android/gms/internal/zzejc;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/zzdzx;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzdzx;-><init>(Lcom/google/android/gms/internal/zzdzw;Lcom/google/android/gms/internal/zzejc;)V

    return-object v0
.end method

.method public final zzbta()Ljava/io/File;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdzw;->zzajx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sslcache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzedc;)Ljava/lang/String;
    .locals 2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/Android"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
