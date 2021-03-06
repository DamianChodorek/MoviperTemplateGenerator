<#if applicationPackage??>
package ${viperPackage}.contract;
</#if>

import com.hannesdorfmann.mosby.mvp.MvpPresenter;
import com.hannesdorfmann.mosby.mvp.MvpView;
import com.mateuszkoslacz.moviper.iface.interactor.MoviperInteractor;
import com.mateuszkoslacz.moviper.iface.presenter.interactor.MoviperPresenterForInteractor;
import com.mateuszkoslacz.moviper.iface.presenter.routing.MoviperFragmentPresenterForRouting;
import com.mateuszkoslacz.moviper.iface.routing.MoviperRouting;

public interface ${prefix}Contract {

    interface Presenter extends MvpPresenter<View> {
        // Defines what methods the View can invoke on the Presenter.
        // In most cases there will be user interactions and View lifecycle events.

    }

    interface View extends MvpView {
        // Defines what methods the Presenter can invoke on the View
        // In most cases there will be manipulating ui and displaying data or errors.

    }

    interface Interactor extends MoviperInteractor<PresenterForInteractor> {
        // Defines what methods the Presenter can invoke on the Interactor.
        // In most cases there will be data saving and querying.

    }

    interface PresenterForInteractor extends MoviperPresenterForInteractor<Interactor> {
        // Defines what methods the Interactor could invoke on the Presenter.
        // In most cases there will be data received callbacks and error notifying.

    }

    interface Routing extends MoviperRouting<PresenterForRouting> {
        // Defines what methods the Presenter can invoke on the Routing.
        // In most cases there will be starting another activities, services and using system
        // framework, ie. scheduling alarms or sending broadcasts.
        // In the case of a fragment being the view, there also will be manipulating
        // the root Activity, ie. switching fragments.

    }

    interface PresenterForRouting extends MoviperFragmentPresenterForRouting<Routing> {
        // Defines what methods the Routing can invoke on the Presenter.
        // In most cases there will be system framework interaction callbacks and error notifying.

    }
}
