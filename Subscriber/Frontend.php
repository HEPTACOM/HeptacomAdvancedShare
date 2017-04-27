<?php

namespace HeptacomAdvancedShare\Subscriber;

use Enlight\Event\SubscriberInterface;
use Enlight_Event_EventArgs;
use Enlight_Controller_Action;
use Shopware\Components\Plugin\ConfigReader;
use Shopware\Components\Theme\LessDefinition;
use Doctrine\Common\Collections\ArrayCollection;

/**
 * Class Frontend
 * @package HeptacomAdvancedShare\Subscriber
 */
class Frontend implements SubscriberInterface
{
	/**
     * @return array
     */
    public static function getSubscribedEvents()
    {
        return [
            'Enlight_Controller_Action_PostDispatchSecure_Frontend' => 'onFrontendPostDispatch',
            'Theme_Compiler_Collect_Plugin_Less' => 'addLessFiles',
            'Theme_Compiler_Collect_Plugin_Javascript' => 'addJsFiles',
        ];
    }

    /**
     * @param Enlight_Event_EventArgs $args
     */
    public function onFrontendPostDispatch(Enlight_Event_EventArgs $args)
    {
        /** @var Enlight_Controller_Action $controller */
        $controller = $args->get('subject');
        $view = $controller->View();

        $view->addTemplateDir(implode(DIRECTORY_SEPARATOR, [__DIR__, '..', 'Resources', 'views']));

        /** @var ConfigReader $configReader */
        $configReader = Shopware()->Container()->get('shopware.plugin.config_reader');
        $config = ['channels' => $configReader->getByPluginName('HeptacomAdvancedShare')];
        $view->assign('heptacomAdvancedShare', $config);

        $view->extendsTemplate(implode(DIRECTORY_SEPARATOR, [
            'frontend',
            'plugins',
            'HeptacomAdvancedShare',
            'index',
            'index.tpl'
        ]));
    }

    /**
     * @param Enlight_Event_EventArgs $args
     * @return ArrayCollection
     */
    public function addLessFiles(Enlight_Event_EventArgs $args)
    {
        $vendorFontAwesome = new LessDefinition([], [implode(DIRECTORY_SEPARATOR, [
            __DIR__,
            '..',
            'Resources',
            'views',
            'frontend',
            '_public',
            'vendors',
            'less',
            'Font-Awesome',
            'less',
            'font-awesome.less'
        ])], __DIR__);

        $less = new LessDefinition([], [implode(DIRECTORY_SEPARATOR, [
            __DIR__,
            '..',
            'Resources',
            'views',
            'frontend',
            '_public',
            'src',
            'less',
            'all.less'
        ])], __DIR__);

        return new ArrayCollection([$vendorFontAwesome, $less]);
    }

    /**
     * @param Enlight_Event_EventArgs $args
     * @return ArrayCollection
     */
    public function addJsFiles(Enlight_Event_EventArgs $args)
    {
        return new ArrayCollection([
            implode(DIRECTORY_SEPARATOR, [
                __DIR__, '..', 'Resources', 'views', 'frontend', '_public', 'vendors', 'js', 'jquery.csbuttons', 'jquery.csbuttons.js'
            ]),
            implode(DIRECTORY_SEPARATOR, [
                __DIR__, '..', 'Resources', 'views', 'frontend', '_public', 'src', 'js', 'jquery.advanced-share.js'
            ])
        ]);
    }
}
