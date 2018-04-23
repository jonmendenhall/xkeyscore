.class final Lcom/google/firebase/database/zzm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzmjz:Lcom/google/android/gms/internal/zzekd;

.field private synthetic zzmka:Lcom/google/android/gms/internal/zzelq;

.field private synthetic zzmkt:Lcom/google/firebase/database/OnDisconnect;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/OnDisconnect;Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzelq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/zzm;->zzmkt:Lcom/google/firebase/database/OnDisconnect;

    iput-object p2, p0, Lcom/google/firebase/database/zzm;->zzmjz:Lcom/google/android/gms/internal/zzekd;

    iput-object p3, p0, Lcom/google/firebase/database/zzm;->zzmka:Lcom/google/android/gms/internal/zzelq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/database/zzm;->zzmkt:Lcom/google/firebase/database/OnDisconnect;

    invoke-static {v0}, Lcom/google/firebase/database/OnDisconnect;->zzb(Lcom/google/firebase/database/OnDisconnect;)Lcom/google/android/gms/internal/zzedn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/zzm;->zzmkt:Lcom/google/firebase/database/OnDisconnect;

    invoke-static {v1}, Lcom/google/firebase/database/OnDisconnect;->zza(Lcom/google/firebase/database/OnDisconnect;)Lcom/google/android/gms/internal/zzedk;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/zzm;->zzmjz:Lcom/google/android/gms/internal/zzekd;

    iget-object v3, p0, Lcom/google/firebase/database/zzm;->zzmka:Lcom/google/android/gms/internal/zzelq;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzelq;->zzcbg()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzedn;->zzb(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    return-void
.end method
