.class public Lcom/google/firebase/database/OnDisconnect;
.super Ljava/lang/Object;


# instance fields
.field private zzmkl:Lcom/google/android/gms/internal/zzedn;

.field private zzmks:Lcom/google/android/gms/internal/zzedk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzedn;Lcom/google/android/gms/internal/zzedk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/OnDisconnect;->zzmkl:Lcom/google/android/gms/internal/zzedn;

    iput-object p2, p0, Lcom/google/firebase/database/OnDisconnect;->zzmks:Lcom/google/android/gms/internal/zzedk;

    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/database/OnDisconnect;)Lcom/google/android/gms/internal/zzedk;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/database/OnDisconnect;->zzmks:Lcom/google/android/gms/internal/zzedk;

    return-object p0
.end method

.method private final zza(Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/DatabaseReference$CompletionListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/zzelt;->zzb(Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/internal/zzelq;

    move-result-object p1

    iget-object v0, p0, Lcom/google/firebase/database/OnDisconnect;->zzmkl:Lcom/google/android/gms/internal/zzedn;

    new-instance v1, Lcom/google/firebase/database/zzo;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/database/zzo;-><init>(Lcom/google/firebase/database/OnDisconnect;Lcom/google/android/gms/internal/zzelq;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzedn;->zzo(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelq;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/tasks/Task;

    return-object p1
.end method

.method private final zza(Ljava/util/Map;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/firebase/database/DatabaseReference$CompletionListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/OnDisconnect;->zzmks:Lcom/google/android/gms/internal/zzedk;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzelv;->zzb(Lcom/google/android/gms/internal/zzedk;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Lcom/google/android/gms/internal/zzelt;->zzb(Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/internal/zzelq;

    move-result-object p2

    iget-object v1, p0, Lcom/google/firebase/database/OnDisconnect;->zzmkl:Lcom/google/android/gms/internal/zzedn;

    new-instance v2, Lcom/google/firebase/database/zzn;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/google/firebase/database/zzn;-><init>(Lcom/google/firebase/database/OnDisconnect;Ljava/util/Map;Lcom/google/android/gms/internal/zzelq;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzedn;->zzo(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzelq;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/tasks/Task;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/firebase/database/OnDisconnect;)Lcom/google/android/gms/internal/zzedn;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/database/OnDisconnect;->zzmkl:Lcom/google/android/gms/internal/zzedn;

    return-object p0
.end method

.method private final zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/zzekd;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/zzekd;",
            "Lcom/google/firebase/database/DatabaseReference$CompletionListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/OnDisconnect;->zzmks:Lcom/google/android/gms/internal/zzedk;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzelv;->zzao(Lcom/google/android/gms/internal/zzedk;)V

    iget-object v0, p0, Lcom/google/firebase/database/OnDisconnect;->zzmks:Lcom/google/android/gms/internal/zzedk;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzege;->zza(Lcom/google/android/gms/internal/zzedk;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzelw;->zzbw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzelv;->zzbv(Ljava/lang/Object;)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzekg;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p1

    invoke-static {p3}, Lcom/google/android/gms/internal/zzelt;->zzb(Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/internal/zzelq;

    move-result-object p2

    iget-object p3, p0, Lcom/google/firebase/database/OnDisconnect;->zzmkl:Lcom/google/android/gms/internal/zzedn;

    new-instance v0, Lcom/google/firebase/database/zzm;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/database/zzm;-><init>(Lcom/google/firebase/database/OnDisconnect;Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzelq;)V

    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/zzedn;->zzo(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzelq;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/tasks/Task;

    return-object p1
.end method


# virtual methods
.method public cancel()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/firebase/database/OnDisconnect;->zza(Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public cancel(Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/database/OnDisconnect;->zza(Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public removeValue()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/firebase/database/OnDisconnect;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public removeValue(Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/database/OnDisconnect;->setValue(Ljava/lang/Object;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    return-void
.end method

.method public setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/database/OnDisconnect;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/zzekd;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Ljava/lang/Object;D)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "D)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/OnDisconnect;->zzmks:Lcom/google/android/gms/internal/zzedk;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/zzekj;->zzc(Lcom/google/android/gms/internal/zzedk;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/database/OnDisconnect;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/zzekd;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/OnDisconnect;->zzmks:Lcom/google/android/gms/internal/zzedk;

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/zzekj;->zzc(Lcom/google/android/gms/internal/zzedk;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/firebase/database/OnDisconnect;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/zzekd;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Ljava/lang/Object;DLcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/OnDisconnect;->zzmks:Lcom/google/android/gms/internal/zzedk;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/zzekj;->zzc(Lcom/google/android/gms/internal/zzedk;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p2

    invoke-direct {p0, p1, p2, p4}, Lcom/google/firebase/database/OnDisconnect;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/zzekd;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public setValue(Ljava/lang/Object;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/firebase/database/OnDisconnect;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/zzekd;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/String;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/OnDisconnect;->zzmks:Lcom/google/android/gms/internal/zzedk;

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/zzekj;->zzc(Lcom/google/android/gms/internal/zzedk;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/database/OnDisconnect;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/zzekd;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public setValue(Ljava/lang/Object;Ljava/util/Map;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/OnDisconnect;->zzmks:Lcom/google/android/gms/internal/zzedk;

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/zzekj;->zzc(Lcom/google/android/gms/internal/zzedk;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/database/OnDisconnect;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/zzekd;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public updateChildren(Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/database/OnDisconnect;->zza(Ljava/util/Map;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public updateChildren(Ljava/util/Map;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/firebase/database/DatabaseReference$CompletionListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/database/OnDisconnect;->zza(Ljava/util/Map;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
